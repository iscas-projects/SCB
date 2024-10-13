(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1097 0)
(declare-sort var2548 0)
(declare-sort var3457 0)
(declare-sort var2006 0)
(declare-sort var1679 0)
(declare-sort var1830 0)
(declare-sort var2465 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getRunner/1917988848 (var1097) var3457)
(declare-fun getDescription/-594252467 (var3457) var2006)
(define-fun contains/1009244746 ((s String) (subs String)) Bool (str.contains s subs))
(define-fun cast-from-String-to-String ((arg String)) String arg)
(declare-fun split/848239037 (String String Int) (Array Int String))
(declare-fun var1679-init () var1679)
(declare-fun <init>/629683790 (var1679 var2006 String) void)
(declare-fun var2465_createFilter/-1880227495 (String var1679) var1830)
(declare-const null-var1097 var1097)
(declare-const null-String String)
(declare-const var633 var1097) ; Statement: r0 := @parameter0: org.junit.runner.Request 
(assert (not (= var633 null-var1097)))
(declare-const var273 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var273 null-String)))
(assert true)
(define-const var1344 var3457 (getRunner/1917988848 var633)) ; Statement: $r1 = virtualinvoke r0.<org.junit.runner.Request: org.junit.runner.Runner getRunner()>() 
(assert true)
(define-const var806 var2006 (getDescription/-594252467 var1344)) ; Statement: r2 = virtualinvoke $r1.<org.junit.runner.Runner: org.junit.runner.Description getDescription()>() 
(assert true)
(define-const var720 Bool (contains/1009244746 var273 (cast-from-String-to-String "="))) ; Statement: $z0 = virtualinvoke r3.<java.lang.String: boolean contains(java.lang.CharSequence)>("=") 
 ; Statement: if $z0 == 0 goto $r4 = newarray (java.lang.String)[2] 
(assert (not (= (ite var720 1 0) 0))) ; Negate: Cond: $z0 == 0  
(assert true)
(define-const var3627 (Array Int String) (split/848239037 var273 "=" 2)) ; Statement: r9 = virtualinvoke r3.<java.lang.String: java.lang.String[] split(java.lang.String,int)>("=", 2) 
 ; Statement: goto [?= $r7 = r9[0]] 
(assert true) ; Non Conditional
(define-const var2308 String (select var3627 0)) ; Statement: $r7 = r9[0] 
(define-const var3617 var1679 var1679-init) ; Statement: $r5 = new org.junit.runner.FilterFactoryParams 
(define-const var1891 String (select var3627 1)) ; Statement: $r6 = r9[1] 
(assert true)
;(assert (<init>/629683790 var3617 var806 var1891)) ; Statement: specialinvoke $r5.<org.junit.runner.FilterFactoryParams: void <init>(org.junit.runner.Description,java.lang.String)>(r2, $r6) 

(declare-const var3617!1 var1679)
(declare-const var806!1 var2006)
(declare-const var1891!1 String)
(define-const var105 var1830 (var2465_createFilter/-1880227495 var2308 var3617!1)) ; Statement: $r8 = staticinvoke <org.junit.runner.FilterFactories: org.junit.runner.manipulation.Filter createFilter(java.lang.String,org.junit.runner.FilterFactoryParams)>($r7, $r5) 
 ; Statement: return $r8 
(check-sat)
(get-model)
(get-unsat-core)
; {getRunner/1917988848=([org.junit.runner.Request], org.junit.runner.Runner), getDescription/-594252467=([org.junit.runner.Runner], org.junit.runner.Description), contains/1009244746=([java.lang.String, java.lang.CharSequence], boolean), cast-from-String-to-String=([java.lang.String], java.lang.CharSequence), split/848239037=([java.lang.String, java.lang.String, int], java.lang.String[]), var1679-init=([], org.junit.runner.FilterFactoryParams), <init>/629683790=([org.junit.runner.FilterFactoryParams, org.junit.runner.Description, java.lang.String], void), var2465_createFilter/-1880227495=([java.lang.String, org.junit.runner.FilterFactoryParams], org.junit.runner.manipulation.Filter)}
; {var1097=org.junit.runner.Request, var633=r0, var273=r3, var2548=null_type, var3457=org.junit.runner.Runner, var1344=$r1, var2006=org.junit.runner.Description, var806=r2, var720=$z0, var3627=r9, var2308=$r7, var1679=org.junit.runner.FilterFactoryParams, var3617=$r5, var1891=$r6, var1830=org.junit.runner.manipulation.Filter, var2465=org.junit.runner.FilterFactories, var105=$r8}
; {org.junit.runner.Request=var1097, r0=var633, r3=var273, null_type=var2548, org.junit.runner.Runner=var3457, $r1=var1344, org.junit.runner.Description=var2006, r2=var806, $z0=var720, r9=var3627, $r7=var2308, org.junit.runner.FilterFactoryParams=var1679, $r5=var3617, $r6=var1891, org.junit.runner.manipulation.Filter=var1830, org.junit.runner.FilterFactories=var2465, $r8=var105}
;seq <java.lang.String: boolean contains(java.lang.CharSequence)>;	<java.lang.String: java.lang.String[] split(java.lang.String,int)>
;cnt {"<java.lang.String: boolean contains(java.lang.CharSequence)>": 1,"<java.lang.String: java.lang.String[] split(java.lang.String,int)>": 1}
;stmts r0 := @parameter0: org.junit.runner.Request;	r3 := @parameter1: java.lang.String;	$r1 = virtualinvoke r0.<org.junit.runner.Request: org.junit.runner.Runner getRunner()>();	r2 = virtualinvoke $r1.<org.junit.runner.Runner: org.junit.runner.Description getDescription()>();	$z0 = virtualinvoke r3.<java.lang.String: boolean contains(java.lang.CharSequence)>("=");	if $z0 == 0 goto $r4 = newarray (java.lang.String)[2];	r9 = virtualinvoke r3.<java.lang.String: java.lang.String[] split(java.lang.String,int)>("=", 2);	goto [?= $r7 = r9[0]];	$r7 = r9[0];	$r5 = new org.junit.runner.FilterFactoryParams;	$r6 = r9[1];	specialinvoke $r5.<org.junit.runner.FilterFactoryParams: void <init>(org.junit.runner.Description,java.lang.String)>(r2, $r6);	$r8 = staticinvoke <org.junit.runner.FilterFactories: org.junit.runner.manipulation.Filter createFilter(java.lang.String,org.junit.runner.FilterFactoryParams)>($r7, $r5);	return $r8
;block_num 3