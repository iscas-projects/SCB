(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1023 0)
(declare-sort var2215 0)
(declare-sort var3473 0)
(declare-sort var3771 0)
(declare-sort var1150 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var3473-init () var3473)
(declare-fun <init>/-325640736 (var3473) void)
(declare-fun split/-636890950 (String String) (Array Int String))
(declare-fun getLength-Arr-String-1 ((Array Int String)) Int)
(declare-fun ordering/-399710883 (var1023) var3771)
(declare-fun var3771_addAll/-114101984 (var3771 Int var1150) Bool)
(declare-fun cast-from-var3473-to-var1150 (var3473) var1150)
(declare-const null-var1023 var1023)
(declare-const null-String String)
(declare-const var3329 var1023) ; Statement: r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link 
(assert (not (= var3329 null-var1023)))
(declare-const var3799 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3799 null-String)))
(define-const var111 var3473 var3473-init) ; Statement: $r0 = new java.util.ArrayList 
(assert true)
;(assert (<init>/-325640736 var111)) ; Statement: specialinvoke $r0.<java.util.ArrayList: void <init>()>() 

(declare-const var111!1 var3473)
(assert true)
(define-const var2780 (Array Int String) (split/-636890950 var3799 ",")) ; Statement: r2 = virtualinvoke r1.<java.lang.String: java.lang.String[] split(java.lang.String)>(",") 
(assert (forall ((i Int)) (not (str.in_re (select (split/-636890950 var3799 ",") i) (re.++ (re.* re.all) (str.to_re ",") (re.* re.all))))))
(define-const var569 Int (getLength-Arr-String-1 var2780)) ; Statement: i0 = lengthof r2 
(define-const var1243 Int 0) ; Statement: i1 = 0 
(assert true) ; Non Conditional
 ; Statement: if i1 >= i0 goto $r4 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link: java.util.List ordering> 
(assert (>= var1243 var569)) ; Cond: i1 >= i0 
(define-const var974 var3771 (ordering/-399710883 var3329)) ; Statement: $r4 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link: java.util.List ordering> 
;(assert (var3771_addAll/-114101984 var974 0 (cast-from-var3473-to-var1150 var111!1))) ; Statement: interfaceinvoke $r4.<java.util.List: boolean addAll(int,java.util.Collection)>(0, $r0) 

(declare-const var974!1 var3771)
(declare-const var1431 Int)
(declare-const var111!2 var3473)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {var3473-init=([], java.util.ArrayList), <init>/-325640736=([java.util.ArrayList], void), split/-636890950=([java.lang.String, java.lang.String], java.lang.String[]), getLength-Arr-String-1=([java.lang.String[]], int), ordering/-399710883=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link], java.util.List), var3771_addAll/-114101984=([java.util.List, int, java.util.Collection], boolean), cast-from-var3473-to-var1150=([java.util.ArrayList], java.util.Collection)}
; {var1023=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link, var3329=r3, var3799=r1, var2215=null_type, var3473=java.util.ArrayList, var111=$r0, var2780=r2, var569=i0, var1243=i1, var3771=java.util.List, var974=$r4, var1150=java.util.Collection, var1431=0}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link=var1023, r3=var3329, r1=var3799, null_type=var2215, java.util.ArrayList=var3473, $r0=var111, r2=var2780, i0=var569, i1=var1243, java.util.List=var3771, $r4=var974, java.util.Collection=var1150, 0=var1431}
;seq <java.lang.String: java.lang.String[] split(java.lang.String)>
;cnt {"<java.lang.String: java.lang.String[] split(java.lang.String)>": 1}
;stmts r3 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link;	r1 := @parameter0: java.lang.String;	$r0 = new java.util.ArrayList;	specialinvoke $r0.<java.util.ArrayList: void <init>()>();	r2 = virtualinvoke r1.<java.lang.String: java.lang.String[] split(java.lang.String)>(",");	i0 = lengthof r2;	i1 = 0;	if i1 >= i0 goto $r4 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link: java.util.List ordering>;	$r4 = r3.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.modules.Link: java.util.List ordering>;	interfaceinvoke $r4.<java.util.List: boolean addAll(int,java.util.Collection)>(0, $r0);	return
;block_num 3