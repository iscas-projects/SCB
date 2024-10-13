(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var931 0)
(declare-sort var2900 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jj_nt/-1717836011 (var931) var2900)
(declare-fun kind/-518265557 (var2900) Int)
(declare-fun jj_consume_token/-884101377 (var931 Int) var2900)
(declare-fun token/-1717836011 (var931) var2900)
(declare-fun image/-518265557 (var2900) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var931 var931)
(declare-const var2968 var931) ; Statement: r0 := @this: org.apache.tomcat.util.json.JSONParser 
(assert (not (= var2968 null-var931)))
(define-const var1407 var2900 (jj_nt/-1717836011 var2968)) ; Statement: $r1 = r0.<org.apache.tomcat.util.json.JSONParser: org.apache.tomcat.util.json.Token jj_nt> 
(define-const var3135 Int (kind/-518265557 var1407)) ; Statement: $i0 = $r1.<org.apache.tomcat.util.json.Token: int kind> 
 ; Statement: lookupswitch($i0) {     case 22: goto virtualinvoke r0.<org.apache.tomcat.util.json.JSONParser: org.apache.tomcat.util.json.Token jj_consume_token(int)>(22);     case 26: goto virtualinvoke r0.<org.apache.tomcat.util.json.JSONParser: org.apache.tomcat.util.json.Token jj_consume_token(int)>(26);     default: goto $r5 = r0.<org.apache.tomcat.util.json.JSONParser: int[] jj_la1>; } 
(assert (and (= var3135 26) (and (not (= var3135 22)) true))) ; Intersect: Cond: $i0 == 26  and Intersect: Negate: Cond: $i0 == 22   and Non Conditional  
(assert true)
;(assert (jj_consume_token/-884101377 var2968 26)) ; Statement: virtualinvoke r0.<org.apache.tomcat.util.json.JSONParser: org.apache.tomcat.util.json.Token jj_consume_token(int)>(26) 

(declare-const var2968!1 var931)
(declare-const var1987 Int)
(define-const var3426 var2900 (token/-1717836011 var2968!1)) ; Statement: $r2 = r0.<org.apache.tomcat.util.json.JSONParser: org.apache.tomcat.util.json.Token token> 
(define-const var877 String (image/-518265557 var3426)) ; Statement: r3 = $r2.<org.apache.tomcat.util.json.Token: java.lang.String image> 
(assert true)
(define-const var2338 Int (length/-134980193 var877)) ; Statement: $i1 = virtualinvoke r3.<java.lang.String: int length()>() 
(define-const var2848 Int (- var2338 1)) ; Statement: $i2 = $i1 - 1 
(assert (and true (and (>= 1 0) (>= (str.len var877) var2848) (>= var2848 1))))
(define-const var2357 String (substring/-1240304868 var877 1 var2848)) ; Statement: $r4 = virtualinvoke r3.<java.lang.String: java.lang.String substring(int,int)>(1, $i2) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {jj_nt/-1717836011=([org.apache.tomcat.util.json.JSONParser], org.apache.tomcat.util.json.Token), kind/-518265557=([org.apache.tomcat.util.json.Token], int), jj_consume_token/-884101377=([org.apache.tomcat.util.json.JSONParser, int], org.apache.tomcat.util.json.Token), token/-1717836011=([org.apache.tomcat.util.json.JSONParser], org.apache.tomcat.util.json.Token), image/-518265557=([org.apache.tomcat.util.json.Token], java.lang.String), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var931=org.apache.tomcat.util.json.JSONParser, var2968=r0, var2900=org.apache.tomcat.util.json.Token, var1407=$r1, var3135=$i0, var1987=26, var3426=$r2, var877=r3, var2338=$i1, var2848=$i2, var2357=$r4}
; {org.apache.tomcat.util.json.JSONParser=var931, r0=var2968, org.apache.tomcat.util.json.Token=var2900, $r1=var1407, $i0=var3135, 26=var1987, $r2=var3426, r3=var877, $i1=var2338, $i2=var2848, $r4=var2357}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: org.apache.tomcat.util.json.JSONParser;	$r1 = r0.<org.apache.tomcat.util.json.JSONParser: org.apache.tomcat.util.json.Token jj_nt>;	$i0 = $r1.<org.apache.tomcat.util.json.Token: int kind>;	lookupswitch($i0) {     case 22: goto virtualinvoke r0.<org.apache.tomcat.util.json.JSONParser: org.apache.tomcat.util.json.Token jj_consume_token(int)>(22);     case 26: goto virtualinvoke r0.<org.apache.tomcat.util.json.JSONParser: org.apache.tomcat.util.json.Token jj_consume_token(int)>(26);     default: goto $r5 = r0.<org.apache.tomcat.util.json.JSONParser: int[] jj_la1>; };	virtualinvoke r0.<org.apache.tomcat.util.json.JSONParser: org.apache.tomcat.util.json.Token jj_consume_token(int)>(26);	$r2 = r0.<org.apache.tomcat.util.json.JSONParser: org.apache.tomcat.util.json.Token token>;	r3 = $r2.<org.apache.tomcat.util.json.Token: java.lang.String image>;	$i1 = virtualinvoke r3.<java.lang.String: int length()>();	$i2 = $i1 - 1;	$r4 = virtualinvoke r3.<java.lang.String: java.lang.String substring(int,int)>(1, $i2);	return $r4
;block_num 2