(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var35 0)
(declare-sort var3552 0)
(declare-sort var2146 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var2146-init () var2146)
(declare-fun <init>/-1612770116 (var2146) void)
(declare-fun setColumn/228298153 (var2146 String String) var2146)
(declare-fun String-init () String)
(declare-fun toFragmentString/-1470195037 (var2146) String)
(define-fun <init>/-1061048412 ((s String)) String s)
(declare-const null-var35 var35)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-Int Int)
(declare-const var535 var35) ; Statement: r12 := @this: org.hibernate.loader.JoinWalker 
(assert (not (= var535 null-var35)))
(declare-const var2616 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var2616 null-String)))
(declare-const var668 (Array Int String)) ; Statement: r0 := @parameter1: java.lang.String[] 
(assert (not (= var668 null-__Array__Int__String__)))
(declare-const var3086 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var3086 null-Int)))
(define-const var3436 Int (getLength-Arr-String-1 var668)) ; Statement: $i0 = lengthof r0 
 ; Statement: if $i0 != 1 goto $r1 = new org.hibernate.sql.ConditionFragment 
(assert (not (not (= var3436 1)))) ; Negate: Cond: $i0 != 1  
(define-const var3952 var2146 var2146-init) ; Statement: $r8 = new org.hibernate.sql.InFragment 
(assert true)
;(assert (<init>/-1612770116 var3952)) ; Statement: specialinvoke $r8.<org.hibernate.sql.InFragment: void <init>()>() 

(declare-const var3952!1 var2146)
(define-const var1148 String (select var668 0)) ; Statement: $r9 = r0[0] 
(assert true)
(define-const var1426 var2146 (setColumn/228298153 var3952!1 var2616 var1148)) ; Statement: r13 = virtualinvoke $r8.<org.hibernate.sql.InFragment: org.hibernate.sql.InFragment setColumn(java.lang.String,java.lang.String)>(r2, $r9) 
(define-const var3762 Int 0) ; Statement: i2 = 0 
(assert true) ; Non Conditional
 ; Statement: if i2 >= i1 goto $r10 = new java.lang.StringBuilder 
(assert (>= var3762 var3086)) ; Cond: i2 >= i1 
(define-const var348 String String-init) ; Statement: $r10 = new java.lang.StringBuilder 
(assert true)
(define-const var3184 String (toFragmentString/-1470195037 var1426)) ; Statement: $r11 = virtualinvoke r13.<org.hibernate.sql.InFragment: java.lang.String toFragmentString()>() 
(assert true)
;(assert (<init>/-1061048412 var348 var3184)) ; Statement: specialinvoke $r10.<java.lang.StringBuilder: void <init>(java.lang.String)>($r11) 
(declare-const var348!1 String)
(assert (= var348!1 var3184))
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-String-1=([java.lang.String[]], int), var2146-init=([], org.hibernate.sql.InFragment), <init>/-1612770116=([org.hibernate.sql.InFragment], void), setColumn/228298153=([org.hibernate.sql.InFragment, java.lang.String, java.lang.String], org.hibernate.sql.InFragment), String-init=([], java.lang.StringBuilder), toFragmentString/-1470195037=([org.hibernate.sql.InFragment], java.lang.String), <init>/-1061048412=([java.lang.StringBuilder, java.lang.String], void)}
; {var35=org.hibernate.loader.JoinWalker, var535=r12, var2616=r2, var3552=null_type, var668=r0, var3086=i1, var3436=$i0, var2146=org.hibernate.sql.InFragment, var3952=$r8, var1148=$r9, var1426=r13, var3762=i2, var348=$r10, var3184=$r11}
; {org.hibernate.loader.JoinWalker=var35, r12=var535, r2=var2616, null_type=var3552, r0=var668, i1=var3086, $i0=var3436, org.hibernate.sql.InFragment=var2146, $r8=var3952, $r9=var1148, r13=var1426, i2=var3762, $r10=var348, $r11=var3184}
;seq <java.lang.StringBuilder: void <init>(java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>(java.lang.String)>": 1}
;stmts r12 := @this: org.hibernate.loader.JoinWalker;	r2 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String[];	i1 := @parameter2: int;	$i0 = lengthof r0;	if $i0 != 1 goto $r1 = new org.hibernate.sql.ConditionFragment;	$r8 = new org.hibernate.sql.InFragment;	specialinvoke $r8.<org.hibernate.sql.InFragment: void <init>()>();	$r9 = r0[0];	r13 = virtualinvoke $r8.<org.hibernate.sql.InFragment: org.hibernate.sql.InFragment setColumn(java.lang.String,java.lang.String)>(r2, $r9);	i2 = 0;	if i2 >= i1 goto $r10 = new java.lang.StringBuilder;	$r10 = new java.lang.StringBuilder;	$r11 = virtualinvoke r13.<org.hibernate.sql.InFragment: java.lang.String toFragmentString()>();	specialinvoke $r10.<java.lang.StringBuilder: void <init>(java.lang.String)>($r11);	return $r10
;block_num 4