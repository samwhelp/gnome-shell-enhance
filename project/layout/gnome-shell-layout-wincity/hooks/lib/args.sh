

## args

if [ "${IS_DEBUG}" = "true" ]; then
	echo
	echo "##"
	echo "## ## Load Args"
	echo "##"
	echo
fi


opt_env=$(core_args_load "${plan_dir_path}/args/env.txt")



if [ "${IS_DEBUG}" = "true" ]; then

	echo
	echo "##"
	echo "## ## Option"
	echo "##"
	echo
	echo


	echo "opt_env=${opt_env}"


	echo
	echo

fi
