# �b��e�ؿ��U��C��l�X�P���Y��
Dir.glob("*.[ch]")

# �b��e�ؿ��U��HTML�ɮ�
Dir.glob("*.{html,htm}", File::FNM_CASEFOLD)
Dir.glob("*.html\0*.htm\0*.HTML\0*.HTM")

# �b�a�ؿ��U�H�I�}�Y���ؿ����ɮ�
Dir.glob(File.expand_path("~/.*"))

# �Ҧ����ufoo��v�P�ubar��v
Dir.glob("{foo,bar}*")
Dir.glob("foo*\0bar*")

# foo.a�Pfoo.b�Pbar.a�Pbar.b
Dir.glob("*{foo,bar}.{a,b}")

# ��e�ؿ��U���Ҧ��ɮ׻P�ؿ�
Dir.glob("**/*")

# ��e�ؿ��U���Ҧ��ؿ�
Dir.glob("**/")

# ��e�ؿ��U���Ҧ��ؿ��U�]�t�� Ruby Script�PCGI
Dir.glob("**/*.{rb,cgi}")

# /etc�ؿ��U���Ҧ��ؿ�
Dir.glob("/etc/**/")
