(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1309 0)
(declare-sort var2258 0)
(declare-sort var1960 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun replaceAll/1692887130 (String String String) String)
(declare-fun var1960-init () var1960)
(declare-fun <init>/2061273758 (var1960 String) void)
(declare-fun getLength-Arr-var2258-1 ((Array Int var2258)) Int)
(declare-fun render/-941257581 (var1960 Int) String)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const null-__Array__Int__var2258__ (Array Int var2258))
(declare-const var2020 Int) ; Statement: i1 := @parameter0: int 
(assert (not (= var2020 null-Int)))
(declare-const var1409 String) ; Statement: r8 := @parameter1: java.lang.String 
(assert (not (= var1409 null-String)))
(declare-const var2972 (Array Int var2258)) ; Statement: r1 := @parameter2: java.lang.Object[] 
(assert (not (= var2972 null-__Array__Int__var2258__)))
(assert true)
(define-const var1951 String (replaceAll/1692887130 var1409 "%([0-9]+)" "arg$1")) ; Statement: r9 = virtualinvoke r8.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("%([0-9]+)", "arg$1") 
(assert (= (replaceAll/1692887130 var1409 "%([0-9]+)" "arg$1") (str.replace_re_all var1409 (re.++ (str.to_re "%") (re.+ (re.range "0" "9"))) "arg$1")))
(define-const var162 var1960 var1960-init) ; Statement: $r0 = new org.stringtemplate.v4.ST 
(assert true)
;(assert (<init>/2061273758 var162 var1951)) ; Statement: specialinvoke $r0.<org.stringtemplate.v4.ST: void <init>(java.lang.String)>(r9) 

(declare-const var162!1 var1960)
(declare-const var1951!1 String)
(define-const var1767 Int 1) ; Statement: i2 = 1 
(define-const var1899 Int (getLength-Arr-var2258-1 var2972)) ; Statement: i0 = lengthof r1 
(define-const var2663 Int 0) ; Statement: i3 = 0 
(assert true) ; Non Conditional
 ; Statement: if i3 >= i0 goto $r2 = virtualinvoke $r0.<org.stringtemplate.v4.ST: java.lang.String render(int)>(i1) 
(assert (>= var2663 var1899)) ; Cond: i3 >= i0 
(assert true)
(define-const var485 String (render/-941257581 var162!1 var2020)) ; Statement: $r2 = virtualinvoke $r0.<org.stringtemplate.v4.ST: java.lang.String render(int)>(i1) 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {replaceAll/1692887130=([java.lang.String, java.lang.String, java.lang.String], java.lang.String), var1960-init=([], org.stringtemplate.v4.ST), <init>/2061273758=([org.stringtemplate.v4.ST, java.lang.String], void), getLength-Arr-var2258-1=([java.lang.Object[]], int), render/-941257581=([org.stringtemplate.v4.ST, int], java.lang.String)}
; {var2020=i1, var1409=r8, var1309=null_type, var2258=java.lang.Object, var2972=r1, var1951=r9, var1960=org.stringtemplate.v4.ST, var162=$r0, var1767=i2, var1899=i0, var2663=i3, var485=$r2}
; {i1=var2020, r8=var1409, null_type=var1309, java.lang.Object=var2258, r1=var2972, r9=var1951, org.stringtemplate.v4.ST=var1960, $r0=var162, i2=var1767, i0=var1899, i3=var2663, $r2=var485}
;seq <java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>
;cnt {"<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>": 1}
;stmts i1 := @parameter0: int;	r8 := @parameter1: java.lang.String;	r1 := @parameter2: java.lang.Object[];	r9 = virtualinvoke r8.<java.lang.String: java.lang.String replaceAll(java.lang.String,java.lang.String)>("%([0-9]+)", "arg$1");	$r0 = new org.stringtemplate.v4.ST;	specialinvoke $r0.<org.stringtemplate.v4.ST: void <init>(java.lang.String)>(r9);	i2 = 1;	i0 = lengthof r1;	i3 = 0;	if i3 >= i0 goto $r2 = virtualinvoke $r0.<org.stringtemplate.v4.ST: java.lang.String render(int)>(i1);	$r2 = virtualinvoke $r0.<org.stringtemplate.v4.ST: java.lang.String render(int)>(i1);	return $r2
;block_num 3