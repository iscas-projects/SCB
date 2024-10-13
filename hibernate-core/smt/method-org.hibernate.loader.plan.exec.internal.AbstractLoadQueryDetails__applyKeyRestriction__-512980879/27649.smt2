(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var665 0)
(declare-sort var2944 0)
(declare-sort var429 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun var429-init () var429)
(declare-fun <init>/-966276690 (var429) void)
(declare-fun setTableAlias/1342634312 (var429 String) var429)
(declare-fun setCondition/1523290746 (var429 (Array Int String) String) var429)
(declare-fun toFragmentString/-1148506603 (var429) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun appendRestrictions/-893782339 (var665 String) void)
(declare-const null-var665 var665)
(declare-const null-String String)
(declare-const null-__Array__Int__String__ (Array Int String))
(declare-const null-Int Int)
(declare-const var1285 var665) ; Statement: r7 := @parameter0: org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder 
(assert (not (= var1285 null-var665)))
(declare-const var1996 String) ; Statement: r2 := @parameter1: java.lang.String 
(assert (not (= var1996 null-String)))
(declare-const var2553 (Array Int String)) ; Statement: r0 := @parameter2: java.lang.String[] 
(assert (not (= var2553 null-__Array__Int__String__)))
(declare-const var3790 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var3790 null-Int)))
(define-const var2816 Int (getLength-Arr-String-1 var2553)) ; Statement: $i0 = lengthof r0 
 ; Statement: if $i0 != 1 goto $r1 = new org.hibernate.sql.ConditionFragment 
(assert (not (= var2816 1))) ; Cond: $i0 != 1 
(define-const var3659 var429 var429-init) ; Statement: $r1 = new org.hibernate.sql.ConditionFragment 
(assert true)
;(assert (<init>/-966276690 var3659)) ; Statement: specialinvoke $r1.<org.hibernate.sql.ConditionFragment: void <init>()>() 

(declare-const var3659!1 var429)
(assert true)
(define-const var259 var429 (setTableAlias/1342634312 var3659!1 var1996)) ; Statement: $r3 = virtualinvoke $r1.<org.hibernate.sql.ConditionFragment: org.hibernate.sql.ConditionFragment setTableAlias(java.lang.String)>(r2) 
(assert true)
(define-const var2815 var429 (setCondition/1523290746 var259 var2553 "?")) ; Statement: r13 = virtualinvoke $r3.<org.hibernate.sql.ConditionFragment: org.hibernate.sql.ConditionFragment setCondition(java.lang.String[],java.lang.String)>(r0, "?") 
(assert true)
(define-const var1909 String (toFragmentString/-1148506603 var2815)) ; Statement: r14 = virtualinvoke r13.<org.hibernate.sql.ConditionFragment: java.lang.String toFragmentString()>() 
(define-const var778 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var778)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var778!1 String)
(assert (= var778!1 ""))
 ; Statement: if i1 != 1 goto virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40) 
(assert (not (not (= var3790 1)))) ; Negate: Cond: i1 != 1  
(assert true)
;(assert (append/672562846 var778!1 var1909)) ; Statement: virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r14) 
(declare-const var778!2 String)
(assert (= var778!2 (str.++ var778!1 var1909)))
 ; Statement: goto [?= $r8 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var3955 String (toString/-2075883882 var778!2)) ; Statement: $r8 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (appendRestrictions/-893782339 var1285 var3955)) ; Statement: virtualinvoke r7.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: void appendRestrictions(java.lang.String)>($r8) 

(declare-const var1285!1 var665)
(declare-const var3955!1 String)
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getLength-Arr-String-1=([java.lang.String[]], int), var429-init=([], org.hibernate.sql.ConditionFragment), <init>/-966276690=([org.hibernate.sql.ConditionFragment], void), setTableAlias/1342634312=([org.hibernate.sql.ConditionFragment, java.lang.String], org.hibernate.sql.ConditionFragment), setCondition/1523290746=([org.hibernate.sql.ConditionFragment, java.lang.String[], java.lang.String], org.hibernate.sql.ConditionFragment), toFragmentString/-1148506603=([org.hibernate.sql.ConditionFragment], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), appendRestrictions/-893782339=([org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder, java.lang.String], void)}
; {var665=org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder, var1285=r7, var1996=r2, var2944=null_type, var2553=r0, var3790=i1, var2816=$i0, var429=org.hibernate.sql.ConditionFragment, var3659=$r1, var259=$r3, var2815=r13, var1909=r14, var778=$r4, var3955=$r8}
; {org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder=var665, r7=var1285, r2=var1996, null_type=var2944, r0=var2553, i1=var3790, $i0=var2816, org.hibernate.sql.ConditionFragment=var429, $r1=var3659, $r3=var259, r13=var2815, r14=var1909, $r4=var778, $r8=var3955}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r7 := @parameter0: org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder;	r2 := @parameter1: java.lang.String;	r0 := @parameter2: java.lang.String[];	i1 := @parameter3: int;	$i0 = lengthof r0;	if $i0 != 1 goto $r1 = new org.hibernate.sql.ConditionFragment;	$r1 = new org.hibernate.sql.ConditionFragment;	specialinvoke $r1.<org.hibernate.sql.ConditionFragment: void <init>()>();	$r3 = virtualinvoke $r1.<org.hibernate.sql.ConditionFragment: org.hibernate.sql.ConditionFragment setTableAlias(java.lang.String)>(r2);	r13 = virtualinvoke $r3.<org.hibernate.sql.ConditionFragment: org.hibernate.sql.ConditionFragment setCondition(java.lang.String[],java.lang.String)>(r0, "?");	r14 = virtualinvoke r13.<org.hibernate.sql.ConditionFragment: java.lang.String toFragmentString()>();	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	if i1 != 1 goto virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(40);	virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r14);	goto [?= $r8 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>()];	$r8 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r7.<org.hibernate.loader.plan.exec.query.internal.SelectStatementBuilder: void appendRestrictions(java.lang.String)>($r8);	return
;block_num 5