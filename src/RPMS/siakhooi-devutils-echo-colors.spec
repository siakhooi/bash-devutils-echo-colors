Name:           siakhooi-devutils-echo-colors
Version:        1.3.9
Release:        1%{?dist}
Summary:        Several echo commands to print text with colors.

License:        MIT
URL:            https://github.com/siakhooi/bash-devutils-echo-colors
Source0:        https://github.com/siakhooi/%{name}/archive/refs/tags/${version}.tar.gz
BuildArch:      noarch

Requires:       bash

%description
Several echo commands to print text with colors.

%install
%{__mkdir}   -v -p %{buildroot}%{_bindir}
%{__mkdir}   -v -p %{buildroot}%{_mandir}/man1
%{__mkdir}   -v -p %{buildroot}/usr/share/licenses/siakhooi-devutils-echo-colors
%{__install} -v -m 0755 %{_topdir}/BUILD/usr/bin/* %{buildroot}%{_bindir}
%{__install} -v -m 644  %{_topdir}/BUILD/usr/share/man/man1/* %{buildroot}%{_mandir}/man1
%{__install} -v -m 644  %{_topdir}/BUILD/LICENSE %{buildroot}/usr/share/licenses/siakhooi-devutils-echo-colors

%post
%{__ln_s} -f %{_mandir}/man1/siakhooi-devutils-echo-colors.1.gz %{_mandir}/man1/echo.blue.1.gz
%{__ln_s} -f %{_mandir}/man1/siakhooi-devutils-echo-colors.1.gz %{_mandir}/man1/echo.cyan.1.gz
%{__ln_s} -f %{_mandir}/man1/siakhooi-devutils-echo-colors.1.gz %{_mandir}/man1/echo.green.1.gz
%{__ln_s} -f %{_mandir}/man1/siakhooi-devutils-echo-colors.1.gz %{_mandir}/man1/echo.magenta.1.gz
%{__ln_s} -f %{_mandir}/man1/siakhooi-devutils-echo-colors.1.gz %{_mandir}/man1/echo.red.1.gz
%{__ln_s} -f %{_mandir}/man1/siakhooi-devutils-echo-colors.1.gz %{_mandir}/man1/echo.yellow.1.gz
%{__ln_s} -f %{_mandir}/man1/siakhooi-devutils-echo-colors.1.gz %{_mandir}/man1/echo.grey.1.gz
%{__ln_s} -f %{_mandir}/man1/siakhooi-devutils-echo-colors.1.gz %{_mandir}/man1/clear-colors.1.gz

%postun
%{__rm} -f %{_mandir}/man1/echo.blue.1.gz
%{__rm} -f %{_mandir}/man1/echo.cyan.1.gz
%{__rm} -f %{_mandir}/man1/echo.green.1.gz
%{__rm} -f %{_mandir}/man1/echo.magenta.1.gz
%{__rm} -f %{_mandir}/man1/echo.red.1.gz
%{__rm} -f %{_mandir}/man1/echo.yellow.1.gz
%{__rm} -f %{_mandir}/man1/echo.grey.1.gz
%{__rm} -f %{_mandir}/man1/clear-colors.1.gz

%files
%license LICENSE
%{_bindir}/cat.blue
%{_bindir}/cat.cyan
%{_bindir}/cat.green
%{_bindir}/cat.grey
%{_bindir}/cat.magenta
%{_bindir}/cat.red
%{_bindir}/cat.yellow
%{_bindir}/clear-colors
%{_bindir}/echo.blue
%{_bindir}/echo.cyan
%{_bindir}/echo.green
%{_bindir}/echo.grey
%{_bindir}/echo.magenta
%{_bindir}/echo.red
%{_bindir}/echo.yellow
%{_mandir}/man1/siakhooi-devutils-echo-colors.1.gz

%changelog
* Sun Nov 3 2024 Siak Hooi <siakhooi@gmail.com> - 1.3.9
- fix change log

* Sun Nov 3 2024 Siak Hooi <siakhooi@gmail.com> - 1.3.8
- bug fix: cat.* didn't print last line without newline

* Sun Nov 3 2024 Siak Hooi <siakhooi@gmail.com> - 1.3.7
- clean up release history

* Wed Oct 30 2024 Siak Hooi <siakhooi@gmail.com> - 1.3.6
- initial rpm version

* Mon Oct 28 2024 Siak Hooi <siakhooi@gmail.com> - 1.3.2
- update script to google style

* Tue Oct 22 2024 Siak Hooi <siakhooi@gmail.com> - 1.3.1
- update script to google style

* Sun Apr 07 2024 Siak Hooi <siakhooi@gmail.com> - 1.3.0
- add cat.blue, cat.cyan, cat.green, cat.grey, cat.red, cat.magenta, cat.yellow

* Thu Aug 31 2023 Siak Hooi <siakhooi@gmail.com> - 1.2.0
- add clear-colors

* Fri May 19 2023 Siak Hooi <siakhooi@gmail.com> - 1.1.1
- fix owner and permission

* Sun Mar 19 2023 Siak Hooi <siakhooi@gmail.com> - 1.1.0
- add echo.grey

* Fri Mar 10 2023 Siak Hooi <siakhooi@gmail.com> - 1.0.1
- fix man page

* Mon Feb 13 2023 Siak Hooi <siakhooi@gmail.com> - 1.0.0
- initial version
