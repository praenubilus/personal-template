if [ $# -ne 3 ];then
	echo 'incorrect arguments. Should be sparse_checkout.sh <target_folder_path> <repo_url> <directory_path_in_repo>'
	exit 1
fi

target_dir=$1
url=$2
path=$3

rm -rf "${target_dir}"
mkdir "${target_dir}"
cd "${target_dir}"
git init
git remote add origin "${url}"
git config core.sparseCheckout true
echo "${path}" >> .git/info/sparse-checkout
git pull origin master
