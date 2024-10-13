(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2685 0)
(declare-sort var1232 0)
(declare-sort var1709 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun jj_nt/-1717836011 (var2685) var1232)
(declare-fun kind/-518265557 (var1232) Int)
(declare-fun jj_la1/-1717836011 (var2685) (Array Int Int))
(declare-fun jj_gen/-1717836011 (var2685) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun jj_consume_token/-884101377 (var2685 Int) var1232)
(declare-fun var1709-init () var1709)
(declare-fun <init>/-870077973 (var1709) void)
(declare-const null-var2685 var2685)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var1998 var2685) ; Statement: r0 := @this: org.apache.tomcat.util.json.JSONParser 
(assert (not (= var1998 null-var2685)))
(define-const var3870 var1232 (jj_nt/-1717836011 var1998)) ; Statement: $r1 = r0.<org.apache.tomcat.util.json.JSONParser: org.apache.tomcat.util.json.Token jj_nt> 
(define-const var1474 Int (kind/-518265557 var3870)) ; Statement: $i0 = $r1.<org.apache.tomcat.util.json.Token: int kind> 
 ; Statement: lookupswitch($i0) {     case 22: goto virtualinvoke r0.<org.apache.tomcat.util.json.JSONParser: org.apache.tomcat.util.json.Token jj_consume_token(int)>(22);     case 26: goto virtualinvoke r0.<org.apache.tomcat.util.json.JSONParser: org.apache.tomcat.util.json.Token jj_consume_token(int)>(26);     default: goto $r5 = r0.<org.apache.tomcat.util.json.JSONParser: int[] jj_la1>; } 
(assert (and (not (= var1474 26)) (and (not (= var1474 22)) true))) ; Intersect: Negate: Cond: $i0 == 26   and Intersect: Negate: Cond: $i0 == 22   and Non Conditional  
(define-const var3914 (Array Int Int) (jj_la1/-1717836011 var1998)) ; Statement: $r5 = r0.<org.apache.tomcat.util.json.JSONParser: int[] jj_la1> 
(define-const var1448 Int (jj_gen/-1717836011 var1998)) ; Statement: $i3 = r0.<org.apache.tomcat.util.json.JSONParser: int jj_gen> 
(declare-const var3914!1 (Array Int Int))
(assert (not (= var3914!1 null-__Array__Int__Int__)))
(assert (= (select var3914!1 12) var1448)) ; Statement: $r5[12] = $i3 
(define-const var3193 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i5 = (int) -1 
(assert true)
;(assert (jj_consume_token/-884101377 var1998 var3193)) ; Statement: virtualinvoke r0.<org.apache.tomcat.util.json.JSONParser: org.apache.tomcat.util.json.Token jj_consume_token(int)>($i5) 

(declare-const var1998!1 var2685)
(declare-const var3193!1 Int)
(define-const var899 var1709 var1709-init) ; Statement: $r7 = new org.apache.tomcat.util.json.ParseException 
(assert true)
;(assert (<init>/-870077973 var899)) ; Statement: specialinvoke $r7.<org.apache.tomcat.util.json.ParseException: void <init>()>() 

(declare-const var899!1 var1709)
 ; Statement: throw $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {jj_nt/-1717836011=([org.apache.tomcat.util.json.JSONParser], org.apache.tomcat.util.json.Token), kind/-518265557=([org.apache.tomcat.util.json.Token], int), jj_la1/-1717836011=([org.apache.tomcat.util.json.JSONParser], int[]), jj_gen/-1717836011=([org.apache.tomcat.util.json.JSONParser], int), cast-from-Int-to-Int=([int], int), jj_consume_token/-884101377=([org.apache.tomcat.util.json.JSONParser, int], org.apache.tomcat.util.json.Token), var1709-init=([], org.apache.tomcat.util.json.ParseException), <init>/-870077973=([org.apache.tomcat.util.json.ParseException], void)}
; {var2685=org.apache.tomcat.util.json.JSONParser, var1998=r0, var1232=org.apache.tomcat.util.json.Token, var3870=$r1, var1474=$i0, var3914=$r5, var1448=$i3, var3193=$i5, var1709=org.apache.tomcat.util.json.ParseException, var899=$r7}
; {org.apache.tomcat.util.json.JSONParser=var2685, r0=var1998, org.apache.tomcat.util.json.Token=var1232, $r1=var3870, $i0=var1474, $r5=var3914, $i3=var1448, $i5=var3193, org.apache.tomcat.util.json.ParseException=var1709, $r7=var899}
;seq 
;cnt {}
;stmts r0 := @this: org.apache.tomcat.util.json.JSONParser;	$r1 = r0.<org.apache.tomcat.util.json.JSONParser: org.apache.tomcat.util.json.Token jj_nt>;	$i0 = $r1.<org.apache.tomcat.util.json.Token: int kind>;	lookupswitch($i0) {     case 22: goto virtualinvoke r0.<org.apache.tomcat.util.json.JSONParser: org.apache.tomcat.util.json.Token jj_consume_token(int)>(22);     case 26: goto virtualinvoke r0.<org.apache.tomcat.util.json.JSONParser: org.apache.tomcat.util.json.Token jj_consume_token(int)>(26);     default: goto $r5 = r0.<org.apache.tomcat.util.json.JSONParser: int[] jj_la1>; };	$r5 = r0.<org.apache.tomcat.util.json.JSONParser: int[] jj_la1>;	$i3 = r0.<org.apache.tomcat.util.json.JSONParser: int jj_gen>;	$r5[12] = $i3;	$i5 = (int) -1;	virtualinvoke r0.<org.apache.tomcat.util.json.JSONParser: org.apache.tomcat.util.json.Token jj_consume_token(int)>($i5);	$r7 = new org.apache.tomcat.util.json.ParseException;	specialinvoke $r7.<org.apache.tomcat.util.json.ParseException: void <init>()>();	throw $r7
;block_num 2