(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var309 0)
(declare-sort var1042 0)
(declare-sort var575 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jj_nt/-1717836011 (var309) var1042)
(declare-fun kind/-518265557 (var1042) Int)
(declare-fun jj_la1/-1717836011 (var309) (Array Int Int))
(declare-fun jj_gen/-1717836011 (var309) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun jj_consume_token/-884101377 (var309 Int) var1042)
(declare-fun var575-init () var575)
(declare-fun <init>/-870077973 (var575) void)
(declare-const null-var309 var309)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var1415 var309) ; Statement: r0 := @this: org.apache.tomcat.util.json.JSONParser 
(assert (not (= var1415 null-var309)))
(define-const var1190 var1042 (jj_nt/-1717836011 var1415)) ; Statement: $r1 = r0.<org.apache.tomcat.util.json.JSONParser: org.apache.tomcat.util.json.Token jj_nt> 
(define-const var3169 Int (kind/-518265557 var1190)) ; Statement: $i0 = $r1.<org.apache.tomcat.util.json.Token: int kind> 
 ; Statement: lookupswitch($i0) {     case 23: goto virtualinvoke r0.<org.apache.tomcat.util.json.JSONParser: org.apache.tomcat.util.json.Token jj_consume_token(int)>(23);     case 27: goto virtualinvoke r0.<org.apache.tomcat.util.json.JSONParser: org.apache.tomcat.util.json.Token jj_consume_token(int)>(27);     default: goto $r5 = r0.<org.apache.tomcat.util.json.JSONParser: int[] jj_la1>; } 
(assert (and (not (= var3169 27)) (and (not (= var3169 23)) true))) ; Intersect: Negate: Cond: $i0 == 27   and Intersect: Negate: Cond: $i0 == 23   and Non Conditional  
(define-const var1316 (Array Int Int) (jj_la1/-1717836011 var1415)) ; Statement: $r5 = r0.<org.apache.tomcat.util.json.JSONParser: int[] jj_la1> 
(define-const var1714 Int (jj_gen/-1717836011 var1415)) ; Statement: $i3 = r0.<org.apache.tomcat.util.json.JSONParser: int jj_gen> 
(declare-const var1316!1 (Array Int Int))
(assert (not (= var1316!1 null-__Array__Int__Int__)))
(assert (= (select var1316!1 11) var1714)) ; Statement: $r5[11] = $i3 
(define-const var2729 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i5 = (int) -1 
(assert true)
;(assert (jj_consume_token/-884101377 var1415 var2729)) ; Statement: virtualinvoke r0.<org.apache.tomcat.util.json.JSONParser: org.apache.tomcat.util.json.Token jj_consume_token(int)>($i5) 

(declare-const var1415!1 var309)
(declare-const var2729!1 Int)
(define-const var3824 var575 var575-init) ; Statement: $r7 = new org.apache.tomcat.util.json.ParseException 
(assert true)
;(assert (<init>/-870077973 var3824)) ; Statement: specialinvoke $r7.<org.apache.tomcat.util.json.ParseException: void <init>()>() 

(declare-const var3824!1 var575)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {jj_nt/-1717836011=([org.apache.tomcat.util.json.JSONParser], org.apache.tomcat.util.json.Token), kind/-518265557=([org.apache.tomcat.util.json.Token], int), jj_la1/-1717836011=([org.apache.tomcat.util.json.JSONParser], int[]), jj_gen/-1717836011=([org.apache.tomcat.util.json.JSONParser], int), cast-from-Int-to-Int=([int], int), jj_consume_token/-884101377=([org.apache.tomcat.util.json.JSONParser, int], org.apache.tomcat.util.json.Token), var575-init=([], org.apache.tomcat.util.json.ParseException), <init>/-870077973=([org.apache.tomcat.util.json.ParseException], void)}
; {var309=org.apache.tomcat.util.json.JSONParser, var1415=r0, var1042=org.apache.tomcat.util.json.Token, var1190=$r1, var3169=$i0, var1316=$r5, var1714=$i3, var2729=$i5, var575=org.apache.tomcat.util.json.ParseException, var3824=$r7}
; {org.apache.tomcat.util.json.JSONParser=var309, r0=var1415, org.apache.tomcat.util.json.Token=var1042, $r1=var1190, $i0=var3169, $r5=var1316, $i3=var1714, $i5=var2729, org.apache.tomcat.util.json.ParseException=var575, $r7=var3824}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.tomcat.util.json.JSONParser;	$r1 = r0.<org.apache.tomcat.util.json.JSONParser: org.apache.tomcat.util.json.Token jj_nt>;	$i0 = $r1.<org.apache.tomcat.util.json.Token: int kind>;	lookupswitch($i0) {     case 23: goto virtualinvoke r0.<org.apache.tomcat.util.json.JSONParser: org.apache.tomcat.util.json.Token jj_consume_token(int)>(23);     case 27: goto virtualinvoke r0.<org.apache.tomcat.util.json.JSONParser: org.apache.tomcat.util.json.Token jj_consume_token(int)>(27);     default: goto $r5 = r0.<org.apache.tomcat.util.json.JSONParser: int[] jj_la1>; };	$r5 = r0.<org.apache.tomcat.util.json.JSONParser: int[] jj_la1>;	$i3 = r0.<org.apache.tomcat.util.json.JSONParser: int jj_gen>;	$r5[11] = $i3;	$i5 = (int) -1;	virtualinvoke r0.<org.apache.tomcat.util.json.JSONParser: org.apache.tomcat.util.json.Token jj_consume_token(int)>($i5);	$r7 = new org.apache.tomcat.util.json.ParseException;	specialinvoke $r7.<org.apache.tomcat.util.json.ParseException: void <init>()>();	throw $r7
;block_num 2