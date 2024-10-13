(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var847 0)
(declare-sort var710 0)
(declare-sort var236 0)
(declare-sort var3991 0)
(declare-sort var2336 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jj_consume_token/-6039748 (var847 Int) var710)
(declare-fun getToken/-1091208120 (var847 Int) var710)
(declare-fun image/2146518970 (var710) String)
(define-fun is-whitespace ((char String)) Bool (< (str.to_code char) 33))
(define-fun-rec trim-left ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s 0 1)) (trim-left (str.substr s 1 (- (str.len s) 1))) s)))
(define-fun-rec trim-right ((s String)) String (ite (= s "") "" (ite (is-whitespace (str.substr s (- (str.len s) 1) 1)) (trim-right (str.substr s 0 (- (str.len s) 1))) s)))
(define-fun trim/-847153721 ((s String)) String (trim-right (trim-left s)))
(declare-fun options/1530209691 (var847) var236)
(declare-fun var236_get/1088891777 (var236 var3991) var3991)
(declare-fun cast-from-String-to-var3991 (String) var3991)
(declare-fun cast-from-var3991-to-var2336 (var3991) var2336)
(declare-fun booleanValue/-1820462562 (var2336) Bool)
(declare-const null-var847 var847)
(declare-const var2155 var847) ; Statement: r0 := @this: org.javacc.utils.ConditionParser 
(assert (not (= var2155 null-var847)))
(assert true)
;(assert (jj_consume_token/-6039748 var2155 21)) ; Statement: specialinvoke r0.<org.javacc.utils.ConditionParser: org.javacc.utils.Token jj_consume_token(int)>(21) 

(declare-const var2155!1 var847)
(declare-const var2149 Int)
(assert true)
(define-const var1738 var710 (getToken/-1091208120 var2155!1 0)) ; Statement: $r1 = virtualinvoke r0.<org.javacc.utils.ConditionParser: org.javacc.utils.Token getToken(int)>(0) 
(define-const var3922 String (image/2146518970 var1738)) ; Statement: $r2 = $r1.<org.javacc.utils.Token: java.lang.String image> 
(assert true)
(define-const var2079 String (trim/-847153721 var3922)) ; Statement: r3 = virtualinvoke $r2.<java.lang.String: java.lang.String trim()>() 
(define-const var1666 var236 (options/1530209691 var2155!1)) ; Statement: $r4 = r0.<org.javacc.utils.ConditionParser: java.util.Map options> 
(define-const var2101 var3991 (var236_get/1088891777 var1666 (cast-from-String-to-var3991 var2079))) ; Statement: r5 = interfaceinvoke $r4.<java.util.Map: java.lang.Object get(java.lang.Object)>(r3) 
(define-const var3451 Bool false) ; Statement: $z0 = r5 instanceof java.lang.Boolean 
 ; Statement: if $z0 == 0 goto $z1 = r5 instanceof java.lang.String 
(assert (not (= (ite var3451 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var1141 var2336 (cast-from-var3991-to-var2336 var2101)) ; Statement: $r8 = (java.lang.Boolean) r5 
(assert true)
(define-const var2856 Bool (booleanValue/-1820462562 var1141)) ; Statement: $z4 = virtualinvoke $r8.<java.lang.Boolean: boolean booleanValue()>() 
 ; Statement: return $z4 
(check-sat)
(get-model)
(get-unsat-core)
; {jj_consume_token/-6039748=([org.javacc.utils.ConditionParser, int], org.javacc.utils.Token), getToken/-1091208120=([org.javacc.utils.ConditionParser, int], org.javacc.utils.Token), image/2146518970=([org.javacc.utils.Token], java.lang.String), trim/-847153721=([java.lang.String], java.lang.String), options/1530209691=([org.javacc.utils.ConditionParser], java.util.Map), var236_get/1088891777=([java.util.Map, java.lang.Object], java.lang.Object), cast-from-String-to-var3991=([java.lang.String], java.lang.Object), cast-from-var3991-to-var2336=([java.lang.Object], java.lang.Boolean), booleanValue/-1820462562=([java.lang.Boolean], boolean)}
; {var847=org.javacc.utils.ConditionParser, var2155=r0, var2149=21, var710=org.javacc.utils.Token, var1738=$r1, var3922=$r2, var2079=r3, var236=java.util.Map, var1666=$r4, var3991=java.lang.Object, var2101=r5, var3451=$z0, var2336=java.lang.Boolean, var1141=$r8, var2856=$z4}
; {org.javacc.utils.ConditionParser=var847, r0=var2155, 21=var2149, org.javacc.utils.Token=var710, $r1=var1738, $r2=var3922, r3=var2079, java.util.Map=var236, $r4=var1666, java.lang.Object=var3991, r5=var2101, $z0=var3451, java.lang.Boolean=var2336, $r8=var1141, $z4=var2856}
;seq <java.lang.String: java.lang.String trim()>
;cnt {"<java.lang.String: java.lang.String trim()>": 1}
;stmts r0 := @this: org.javacc.utils.ConditionParser;	specialinvoke r0.<org.javacc.utils.ConditionParser: org.javacc.utils.Token jj_consume_token(int)>(21);	$r1 = virtualinvoke r0.<org.javacc.utils.ConditionParser: org.javacc.utils.Token getToken(int)>(0);	$r2 = $r1.<org.javacc.utils.Token: java.lang.String image>;	r3 = virtualinvoke $r2.<java.lang.String: java.lang.String trim()>();	$r4 = r0.<org.javacc.utils.ConditionParser: java.util.Map options>;	r5 = interfaceinvoke $r4.<java.util.Map: java.lang.Object get(java.lang.Object)>(r3);	$z0 = r5 instanceof java.lang.Boolean;	if $z0 == 0 goto $z1 = r5 instanceof java.lang.String;	$r8 = (java.lang.Boolean) r5;	$z4 = virtualinvoke $r8.<java.lang.Boolean: boolean booleanValue()>();	return $z4
;block_num 2