Name:		coffeegrindsize
Version:	1.0.0
Release:	1%{?dist}
Summary:	An application to measure your coffee grind size distribution 
License:	MIT
URL:		https://github.com/jgagneastro/coffeegrindsize
Source0:	https://github.com/izaera/coffeegrindsize/archive/v1.0.0.zip

Requires:	python3
Requires:	python3-pandas
Requires:	python3-pillow-tk 
Requires:	python3-tkinter

%description
An application to measure your coffee grind size distribution

%prep
%setup -q

#%build
#ln -s /home/ivan/Desarrollo/coffeegrindsize/Makefile /home/ivan/rpmbuild/BUILD/coffeegrindsize-1.0.0

%install
%{make_install} PREFIX=%{_prefix}

%files
%{_prefix}/bin/coffeegrindsize
%{_prefix}/share/doc/coffeegrindsize/Bad_Example_Picture.png
%{_prefix}/share/doc/coffeegrindsize/Better_Example_Picture.png
%{_prefix}/share/doc/coffeegrindsize/coffee_grind_size_manual.pdf
%{_prefix}/share/doc/coffeegrindsize/coffee_grind_size_summarized_manual.pdf
%{_prefix}/share/doc/coffeegrindsize/Decent_Example_Picture.png
