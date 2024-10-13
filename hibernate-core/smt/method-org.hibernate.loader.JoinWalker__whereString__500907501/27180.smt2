(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var565 0)
(declare-sort var3412 0)
(declare-sort var3962 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var3962-init () var3962)
(declare-fun <init>/-966276690 (var3962) void)
(declare-fun setTableAlias/1342634312 (var3962 String) var3962)
(declare-fun setCondition/1523290746 (var3962 (Array Int String) String) var3962)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun toFragmentString/-1148506603 (var3962) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-const null-var565 var565)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-Int Int)
(declare-const var2409 var565) ; Statement: r12 := @this: org.hibernate.loader.JoinWalker 
(assert (not (= var2409 null-var565)))
(declare-const var3994 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var3994 null-String)))
(declare-const var1044 (Array Int String)) ; Statement: r0 := @parameter1: java.lang.String[] 
(assert (not (= var1044 null-__Array__Int__String__)))
(declare-const var2490 Int) ; Statement: i1 := @parameter2: int 
(assert (not (= var2490 null-Int)))
(define-const var861 Int (getLength-Arr-String-1 var1044)) ; Statement: $i0 = lengthof r0 
 ; Statement: if $i0 != 1 goto $r1 = new org.hibernate.sql.ConditionFragment 
(assert (not (= var861 1))) ; Cond: $i0 != 1 
(define-const var1998 var3962 var3962-init) ; Statement: $r1 = new org.hibernate.sql.ConditionFragment 
(assert true)
;(assert (<init>/-966276690 var1998)) ; Statement: specialinvoke $r1.<org.hibernate.sql.ConditionFragment: void <init>()>() 

(declare-const var1998!1 var3962)
(assert true)
(define-const var158 var3962 (setTableAlias/1342634312 var1998!1 var3994)) ; Statement: $r3 = virtualinvoke $r1.<org.hibernate.sql.ConditionFragment: org.hibernate.sql.ConditionFragment setTableAlias(java.lang.String)>(r2) 
(assert true)
(define-const var2878 var3962 (setCondition/1523290746 var158 var1044 "?")) ; Statement: r14 = virtualinvoke $r3.<org.hibernate.sql.ConditionFragment: org.hibernate.sql.ConditionFragment setCondition(java.lang.String[],java.lang.String)>(r0, "?") 
(define-const var3831 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3831)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3831!1 String)
(assert (= var3831!1 ""))
 ; Statement: if i1 != 1 goto virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(assert (not (not (= var2490 1)))) ; Negate: Cond: i1 != 1  
(assert true)
(define-const var3245 String (toFragmentString/-1148506603 var2878)) ; Statement: $r7 = virtualinvoke r14.<org.hibernate.sql.ConditionFragment: java.lang.String toFragmentString()>() 
(assert true)
;(assert (append/672562846 var3831!1 var3245)) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var3831!2 String)
(assert (= var3831!2 (str.++ var3831!1 var3245)))
 ; Statement: goto [?= return $r4] 
(assert true) ; Non Conditional
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-String-1=([java.lang.String[]], int), var3962-init=([], org.hibernate.sql.ConditionFragment), <init>/-966276690=([org.hibernate.sql.ConditionFragment], void), setTableAlias/1342634312=([org.hibernate.sql.ConditionFragment, java.lang.String], org.hibernate.sql.ConditionFragment), setCondition/1523290746=([org.hibernate.sql.ConditionFragment, java.lang.String[], java.lang.String], org.hibernate.sql.ConditionFragment), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), toFragmentString/-1148506603=([org.hibernate.sql.ConditionFragment], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder)}
; {var565=org.hibernate.loader.JoinWalker, var2409=r12, var3994=r2, var3412=null_type, var1044=r0, var2490=i1, var861=$i0, var3962=org.hibernate.sql.ConditionFragment, var1998=$r1, var158=$r3, var2878=r14, var3831=$r4, var3245=$r7}
; {org.hibernate.loader.JoinWalker=var565, r12=var2409, r2=var3994, null_type=var3412, r0=var1044, i1=var2490, $i0=var861, org.hibernate.sql.ConditionFragment=var3962, $r1=var1998, $r3=var158, r14=var2878, $r4=var3831, $r7=var3245}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1}
;stmts r12 := @this: org.hibernate.loader.JoinWalker;	r2 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String[];	i1 := @parameter2: int;	$i0 = lengthof r0;	if $i0 != 1 goto $r1 = new org.hibernate.sql.ConditionFragment;	$r1 = new org.hibernate.sql.ConditionFragment;	specialinvoke $r1.<org.hibernate.sql.ConditionFragment: void <init>()>();	$r3 = virtualinvoke $r1.<org.hibernate.sql.ConditionFragment: org.hibernate.sql.ConditionFragment setTableAlias(java.lang.String)>(r2);	r14 = virtualinvoke $r3.<org.hibernate.sql.ConditionFragment: org.hibernate.sql.ConditionFragment setCondition(java.lang.String[],java.lang.String)>(r0, "?");	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	if i1 != 1 goto virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	$r7 = virtualinvoke r14.<org.hibernate.sql.ConditionFragment: java.lang.String toFragmentString()>();	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	goto [?= return $r4];	return $r4
;block_num 4