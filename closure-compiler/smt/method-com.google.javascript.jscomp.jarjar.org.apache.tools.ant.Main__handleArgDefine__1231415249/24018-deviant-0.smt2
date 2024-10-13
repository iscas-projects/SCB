(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3153 0)
(declare-sort var444 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(define-fun indexOf/-1037706067 ((s String) (c Int)) Int (str.indexof s (str.from_code c) 0))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var444-init () var444)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1864341934 (var444 String) void)
(declare-const null-var3153 var3153)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-Int Int)
(declare-const var2429 var3153) ; Statement: r7 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Main 
(assert (not (= var2429 null-var3153)))
(declare-const var3524 (Array Int String)) ; Statement: r0 := @parameter0: java.lang.String[] 
(assert (not (= var3524 null-__Array__Int__String__)))
(declare-const var255 Int) ; Statement: i4 := @parameter1: int 
(assert (not (= var255 null-Int)))
(define-const var1532 String (select var3524 var255)) ; Statement: r1 = r0[i4] 
(assert (not (and true (and (>= 2 0) (>= (str.len var1532) 2)))))
(check-sat)
(get-model)
(get-unsat-core)
; {substring/850833817=([java.lang.String, int], java.lang.String), indexOf/-1037706067=([java.lang.String, int], int), getLength-Arr-String-1=([java.lang.String[]], int), var444-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1864341934=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, java.lang.String], void)}
; {var3153=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Main, var2429=r7, var3524=r0, var255=i4, var1532=r1, var3390=r9, var1966=i0, var1223=$i1, var2374=$i2, var444=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException, var1581=$r2, var2551=$r3, var1852=$r4, var2232=$r5, var2111=$r6}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Main=var3153, r7=var2429, r0=var3524, i4=var255, r1=var1532, r9=var3390, i0=var1966, $i1=var1223, $i2=var2374, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException=var444, $r2=var1581, $r3=var2551, $r4=var1852, $r5=var2232, $r6=var2111}
;seq <java.lang.String: java.lang.String substring(int)>;	<java.lang.String: int indexOf(int)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.String: int indexOf(int)>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.Main;	r0 := @parameter0: java.lang.String[];	i4 := @parameter1: int;	r1 = r0[i4];	r9 = virtualinvoke r1.<java.lang.String: java.lang.String substring(int)>(2);	i0 = virtualinvoke r9.<java.lang.String: int indexOf(int)>(61);	if i0 <= 0 goto $i1 = lengthof r0;	$i1 = lengthof r0;	$i2 = $i1 - 1;	if i4 >= $i2 goto $r2 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r2 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Missing value for property ");	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r9);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r2.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.BuildException: void <init>(java.lang.String)>($r6);	throw $r2
;block_num 3