#include "walker_arm_kin.h"

string arm_joint_names[17]={"left_limb_l1","left_limb_l2","left_limb_l3","left_limb_l4","left_limb_l5","left_limb_l6","left_limb_l7","left_palm_link",
                            "right_limb_l1","right_limb_l2","right_limb_l3","right_limb_l4","right_limb_l5","right_limb_l6","right_limb_l7","right_palm_link","base_link"};

void forward_kinematics_left(VectorXd joint_values, Tree walker_tree, VectorXd &result)
{
    Chain chain;
    Frame cartpos;
    KDL::Vector pos;
    bool exit_value;
    bool kinematics_status;

    exit_value = walker_tree.getChain("base_link", "left_palm_link", chain);
    ChainFkSolverPos_recursive fksolver1 = ChainFkSolverPos_recursive(chain);
    unsigned int nj = chain.getNrOfJoints();
    JntArray jointpositions = JntArray(nj);

    for(int i=0; i<nj; i++)
    {
      jointpositions(i)=joint_values(i);
    }

    kinematics_status = fksolver1.JntToCart(jointpositions, cartpos);
    pos=cartpos.p;
    KDL::Rotation rotation = Rotation(cartpos.M);
    double rot[4];
    rotation.GetQuaternion(rot[0],rot[1],rot[2],rot[3]);

    result << pos(0), pos(1), pos(2), rot[0], rot[1], rot[2], rot[3];
}

void forward_kinematics_right(VectorXd joint_values, Tree walker_tree, VectorXd &result)
{
    Chain chain;
    Frame cartpos;
    KDL::Vector pos;
    bool exit_value;
    bool kinematics_status;

    exit_value = walker_tree.getChain("base_link", "right_palm_link", chain);
    ChainFkSolverPos_recursive fksolver1 = ChainFkSolverPos_recursive(chain);
    unsigned int nj = chain.getNrOfJoints();
    JntArray jointpositions = JntArray(nj);

    for(int i=0; i<nj; i++)
    {
      jointpositions(i)=joint_values(i);
    }

    kinematics_status = fksolver1.JntToCart(jointpositions, cartpos);
    pos=cartpos.p;
    KDL::Rotation rotation = Rotation(cartpos.M);
    double rot[4];
    rotation.GetQuaternion(rot[0],rot[1],rot[2],rot[3]);

    result << pos(0), pos(1), pos(2), rot[0], rot[1], rot[2], rot[3];
}

VectorXd inverse_kinematics(VectorXd position, VectorXd orientation, VectorXd seed, KDL::Chain arm_chain)
{
    VectorXd result(7);

    ChainFkSolverPos_recursive fksolver = ChainFkSolverPos_recursive(arm_chain);
    ChainIkSolverVel_pinv iksolver_v = 	ChainIkSolverVel_pinv(arm_chain);
    ChainIkSolverPos_NR iksolver_p = ChainIkSolverPos_NR(arm_chain, fksolver, iksolver_v);

    KDL::Vector pos = KDL::Vector(position(0), position(1), position(2));
    KDL::Rotation rot = Rotation();
    rot = rot.Quaternion(orientation(0), orientation(1), orientation(2), orientation(3));

    KDL::JntArray seed_array = JntArray(7);
    for(int i=0; i<7; i++)
    {
        seed_array(i) = seed(i);
    }

    //Make IK Call
    KDL::Frame goal_pose;
    goal_pose = Frame(rot,pos);

    KDL::JntArray result_angles = JntArray(7);
    bool ik_status;
    ik_status = iksolver_p.CartToJnt(seed_array, goal_pose, result_angles);

    for(int i=0; i<7; i++)
    {
        result(i) = result_angles(i);
    }
    return result;
}

bool get_inverse_right(std::string urdf_path, VectorXd target_position_right, VectorXd target_orientation_right, VectorXd &ik_q_right)
{
    Tree walker_tree;
    kdl_parser::treeFromFile(urdf_path, walker_tree);
    KDL::Chain arm_chain_right;
    walker_tree.getChain("base_link", "right_palm_link", arm_chain_right);
    MatrixXd inverse_seed_dataset_right(18,7);
    inverse_seed_dataset_right <<   -0.174778,-0.380523,1.16496,-1.54386,-0.872739,-0.0697961,-0.235274,
                                    -0.500365,-0.373141,1.07081,-0.837266,-0.739666,-0.239205,-0.0869575,
                                    -0.0825473,-0.325204,1.44808,-1.32363,-1.05001,-0.00958738,-0.119746,
                                    -0.293182,-0.201143,1.47943,-1.09862,-1.05001,-0.00958738,-0.0994211,
                                    -0.549357,-0.324245,1.13275,-0.820296,-0.935057,-0.0258859,-0.10968,
                                    -0.453867,-0.228371,1.44731,-0.866316,-1.11549,-0.0149563,0.0183119,
                                    -0.132018,-0.326642,1.27435,-1.30618,-0.922114,-0.105653,-0.0462112,
                                    -0.515705,-0.152248,1.27435,-0.803518,-1.04838,-0.105653,-0.0462112,
                                    -0.0993253,-0.215428,1.19612,-1.47742,-1.05672,-0.0515801,-0.103256,
                                    -0.48167,-0.12128,1.18078,-0.989897,-1.05672,-0.051676,-0.103256,
                                    -0.263941,-0.245916,0.945507,-1.41673,-0.964011,-0.0616469,-0.103256,
                                    -0.413312,-0.184653,0.977433,-1.19468,-0.964011,-0.0616469,-0.103256,
                                    -0.546768,-0.105845,1.02317,-0.959793,-0.846757,-0.0616469,-0.10316,
                                    -0.209964,-0.21447,0.961135,-1.48096,-0.902077,-0.0697003,-0.10316,
                                    -0.550124,-0.136908,0.913965,-1.06842,-0.846662,-0.00997088,-0.189159,
                                    -0.545618,-0.0746857,0.96008,-1.10025,-0.957012,-0.00997088,-0.14707,
                                    -0.429419,-0.136908,0.913486,-1.25786,-1.03879,-0.00997088,-0.14707,
                                    -0.25675,-0.216004,0.914157,-1.47981,-1.01971,-0.00997088,-0.14707;

    VectorXd ik_q_right_temp(7);
    bool ik_flag = false;

    for(int i=0; i<inverse_seed_dataset_right.rows(); i++)
    {
        ik_q_right_temp = inverse_kinematics(target_position_right, target_orientation_right, inverse_seed_dataset_right.row(i), arm_chain_right);
        if(ik_q_right_temp(0) < 0.7854 && ik_q_right_temp(0) > -3.1416 &&
           ik_q_right_temp(1) < 0.0175 && ik_q_right_temp(1) > -1.5708 &&
           ik_q_right_temp(2) < 1.9199 && ik_q_right_temp(2) > -1.9199 &&
           ik_q_right_temp(3) < 0.0000 && ik_q_right_temp(3) > -2.2340 &&
           ik_q_right_temp(4) < 2.3562 && ik_q_right_temp(4) > -2.3562 &&
           ik_q_right_temp(5) < 0.3808 && ik_q_right_temp(5) > -0.3808 &&
           ik_q_right_temp(6) < 0.3808 && ik_q_right_temp(6) > -0.3808 )
        {
            ik_q_right = ik_q_right_temp;

            VectorXd pose_expect_right(7), pose_result_right(7), pose_diff_right(7);
            pose_expect_right << target_position_right, target_orientation_right;
            forward_kinematics_right(ik_q_right, walker_tree, pose_result_right);
            pose_diff_right = pose_result_right - pose_expect_right;
            if(pose_diff_right.norm() < 0.001)
            {
                ik_flag = true;
                cout << "经过" << i+1 << "次种子选取，右臂反解成功：" << endl << ik_q_right << endl;
                cout << "右臂末端计算位姿：" << endl << pose_result_right << endl;
                break;
            }
        }
    }

    if(ik_flag == false)
    {
        cout << "右臂反解失败..." << endl ;
    }
    return ik_flag;
}


bool get_inverse_left(std::string urdf_path, VectorXd target_position_left, VectorXd target_orientation_left, VectorXd &ik_q_left)
{
    Tree walker_tree;
    kdl_parser::treeFromFile(urdf_path, walker_tree);
    KDL::Chain arm_chain_left;
    walker_tree.getChain("base_link", "left_palm_link", arm_chain_left);

    MatrixXd inverse_seed_dataset_left(13,7);
    inverse_seed_dataset_left <<    0.509665,   0.0292415,-1.0758,  -0.961518, 1.06343,  0.068358,  -0.0761238,
                                    0.293661,  -0.231343, -1.48403, -0.946466, 0.970626, 0.187625,  -0.00901214,
                                    0.0897379, -0.280718, -1.48384, -1.1664,   0.906966, 0.177558,  -0.00901214,
                                    -0.108529, -0.28091,  -1.48556, -1.38538,  0.890476, 0.177558,  -0.00901214,
                                    0.215716,  -0.123965, -1.48547, -1.07072,  1.06362,  0.20843,   -0.00901214,
                                    -0.144194, -0.155316, -1.46572, -1.49544,  1.04713,  0.116295,  -0.00901214,
                                    0.2765,     0.0294333,-1.37224, -1.08146,  1.1572,   0.169984,  -0.00901214,
                                    -0.0191748, 0.0290498,-1.38873, -1.51097,  1.26726,  -0.0356651,-0.00901214,
                                    0.43335,    0.030392, -1.24952, -0.993828, 1.15605,  0.0457318, -0.00901214,
                                    -0.00421845,0.0278034,-1.2803,  -1.46399,  1.25087,  0.0455401, -0.00901214,
                                    0.509665,   0.0292415,-1.0758,  -0.961518, 1.06343,  0.068358,  -0.0761238,
                                    0.274678,   0.028858, -1.12297, -1.19881,  1.14147, 0.0780413, -0.0765073,
                                    0.088108,   0.0230097,-1.12374, -1.41654,  1.25115,  0.0756444, -0.0765073;

    VectorXd ik_q_left_temp(7);
    bool ik_flag = false;

    for(int i=0; i<inverse_seed_dataset_left.rows(); i++)
    {
        ik_q_left_temp = inverse_kinematics(target_position_left, target_orientation_left, inverse_seed_dataset_left.row(i), arm_chain_left);
        if(ik_q_left_temp(0) < 3.1416 && ik_q_left_temp(0) > -0.7854 &&
           ik_q_left_temp(1) < 0.0175 && ik_q_left_temp(1) > -1.5708 &&
           ik_q_left_temp(2) < 1.9199 && ik_q_left_temp(2) > -1.9199 &&
           ik_q_left_temp(3) < 0.0000 && ik_q_left_temp(3) > -2.2340 &&
           ik_q_left_temp(4) < 2.3562 && ik_q_left_temp(4) > -2.3562 &&
           ik_q_left_temp(5) < 0.3808 && ik_q_left_temp(5) > -0.3808 &&
           ik_q_left_temp(6) < 0.3808 && ik_q_left_temp(6) > -0.3808 )
        {
            ik_q_left = ik_q_left_temp;

            VectorXd pose_expect_left(7), pose_result_left(7), pose_diff_left(7);
            pose_expect_left << target_position_left, target_orientation_left;
            forward_kinematics_left(ik_q_left, walker_tree, pose_result_left);
            pose_diff_left = pose_result_left - pose_expect_left;
            if(pose_diff_left.norm() < 0.001)
            {
                ik_flag = true;
                cout << "经过" << i+1 << "次种子选取，左臂反解成功：" << endl << ik_q_left << endl;
                cout << "左臂末端计算位姿：" << endl << pose_result_left << endl;
                break;
            }
        }
    }

    if(ik_flag == false)
    {
        cout << "左臂反解失败..." << endl ;
    }
    return ik_flag;
}
