for key in FFF979E7 CDFD6BB0 4C7EA887 6AC6A4C2 824B18E8; do
	pacman-key --recv-keys $key
	pacman-key --lsign-key $key
	printf 'trust\n3\nquit\n' | gpg --homedir /etc/pacman.d/gnupg/ \
	--no-permission-warning --command-fd 0 --edit-key $key
done
