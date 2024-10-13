(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1822 0)
(declare-sort var1001 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jj_nt/-1717836011 (var1822) var1001)
(declare-fun kind/-518265557 (var1001) Int)
(declare-fun jj_consume_token/-884101377 (var1822 Int) var1001)
(declare-fun token/-1717836011 (var1822) var1001)
(declare-fun image/-518265557 (var1001) String)
(define-fun length/-134980193 ((s String)) Int (str.len s))
(define-fun substring/-1240304868 ((s String) (begin Int) (end Int)) String (str.substr s begin (- end begin)))
(declare-const null-var1822 var1822)
(declare-const var2397 var1822) ; Statement: r0 := @this: org.apache.tomcat.util.json.JSONParser 
(assert (not (= var2397 null-var1822)))
(define-const var1296 var1001 (jj_nt/-1717836011 var2397)) ; Statement: $r1 = r0.<org.apache.tomcat.util.json.JSONParser: org.apache.tomcat.util.json.Token jj_nt> 
(define-const var119 Int (kind/-518265557 var1296)) ; Statement: $i0 = $r1.<org.apache.tomcat.util.json.Token: int kind> 
 ; Statement: lookupswitch($i0) {     case 23: goto virtualinvoke r0.<org.apache.tomcat.util.json.JSONParser: org.apache.tomcat.util.json.Token jj_consume_token(int)>(23);     case 27: goto virtualinvoke r0.<org.apache.tomcat.util.json.JSONParser: org.apache.tomcat.util.json.Token jj_consume_token(int)>(27);     default: goto $r5 = r0.<org.apache.tomcat.util.json.JSONParser: int[] jj_la1>; } 
(assert (and (= var119 27) (and (not (= var119 23)) true))) ; Intersect: Cond: $i0 == 27  and Intersect: Negate: Cond: $i0 == 23   and Non Conditional  
(assert true)
;(assert (jj_consume_token/-884101377 var2397 27)) ; Statement: virtualinvoke r0.<org.apache.tomcat.util.json.JSONParser: org.apache.tomcat.util.json.Token jj_consume_token(int)>(27) 

(declare-const var2397!1 var1822)
(declare-const var2605 Int)
(define-const var1797 var1001 (token/-1717836011 var2397!1)) ; Statement: $r2 = r0.<org.apache.tomcat.util.json.JSONParser: org.apache.tomcat.util.json.Token token> 
(define-const var2774 String (image/-518265557 var1797)) ; Statement: r3 = $r2.<org.apache.tomcat.util.json.Token: java.lang.String image> 
(assert true)
(define-const var2184 Int (length/-134980193 var2774)) ; Statement: $i1 = virtualinvoke r3.<java.lang.String: int length()>() 
(define-const var2710 Int (- var2184 1)) ; Statement: $i2 = $i1 - 1 
(assert (and true (and (>= 1 0) (>= (str.len var2774) var2710) (>= var2710 1))))
(define-const var2197 String (substring/-1240304868 var2774 1 var2710)) ; Statement: $r4 = virtualinvoke r3.<java.lang.String: java.lang.String substring(int,int)>(1, $i2) 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {jj_nt/-1717836011=([org.apache.tomcat.util.json.JSONParser], org.apache.tomcat.util.json.Token), kind/-518265557=([org.apache.tomcat.util.json.Token], int), jj_consume_token/-884101377=([org.apache.tomcat.util.json.JSONParser, int], org.apache.tomcat.util.json.Token), token/-1717836011=([org.apache.tomcat.util.json.JSONParser], org.apache.tomcat.util.json.Token), image/-518265557=([org.apache.tomcat.util.json.Token], java.lang.String), length/-134980193=([java.lang.String], int), substring/-1240304868=([java.lang.String, int, int], java.lang.String)}
; {var1822=org.apache.tomcat.util.json.JSONParser, var2397=r0, var1001=org.apache.tomcat.util.json.Token, var1296=$r1, var119=$i0, var2605=27, var1797=$r2, var2774=r3, var2184=$i1, var2710=$i2, var2197=$r4}
; {org.apache.tomcat.util.json.JSONParser=var1822, r0=var2397, org.apache.tomcat.util.json.Token=var1001, $r1=var1296, $i0=var119, 27=var2605, $r2=var1797, r3=var2774, $i1=var2184, $i2=var2710, $r4=var2197}
;seq <java.lang.String: int length()>;	<java.lang.String: java.lang.String substring(int,int)>
;cnt {"<java.lang.String: int length()>": 1,"<java.lang.String: java.lang.String substring(int,int)>": 1}
;stmts r0 := @this: org.apache.tomcat.util.json.JSONParser;	$r1 = r0.<org.apache.tomcat.util.json.JSONParser: org.apache.tomcat.util.json.Token jj_nt>;	$i0 = $r1.<org.apache.tomcat.util.json.Token: int kind>;	lookupswitch($i0) {     case 23: goto virtualinvoke r0.<org.apache.tomcat.util.json.JSONParser: org.apache.tomcat.util.json.Token jj_consume_token(int)>(23);     case 27: goto virtualinvoke r0.<org.apache.tomcat.util.json.JSONParser: org.apache.tomcat.util.json.Token jj_consume_token(int)>(27);     default: goto $r5 = r0.<org.apache.tomcat.util.json.JSONParser: int[] jj_la1>; };	virtualinvoke r0.<org.apache.tomcat.util.json.JSONParser: org.apache.tomcat.util.json.Token jj_consume_token(int)>(27);	$r2 = r0.<org.apache.tomcat.util.json.JSONParser: org.apache.tomcat.util.json.Token token>;	r3 = $r2.<org.apache.tomcat.util.json.Token: java.lang.String image>;	$i1 = virtualinvoke r3.<java.lang.String: int length()>();	$i2 = $i1 - 1;	$r4 = virtualinvoke r3.<java.lang.String: java.lang.String substring(int,int)>(1, $i2);	return $r4
;block_num 2