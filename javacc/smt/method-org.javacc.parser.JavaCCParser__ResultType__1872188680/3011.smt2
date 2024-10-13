(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2357 0)
(declare-sort var3200 0)
(declare-sort var618 0)
(declare-sort var2136 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getToken/1999213251 (var2357 Int) var618)
(declare-fun jj_ntk/549669294 (var2357) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun jj_consume_token/1648575159 (var2357 Int) var618)
(declare-fun image/197050796 (var618) String)
(declare-fun isAllowed/-930151217 (var2357 var618) Bool)
(declare-fun var2136-init () var2136)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1157378735 (var2136 String) void)
(declare-const null-var2357 var2357)
(declare-const null-var3200 var3200)
(declare-const var3000 var2357) ; Statement: r0 := @this: org.javacc.parser.JavaCCParser 
(assert (not (= var3000 null-var2357)))
(declare-const var984 var3200) ; Statement: r16 := @parameter0: java.util.List 
(assert (not (= var984 null-var3200)))
(assert true)
(define-const var263 var618 (getToken/1999213251 var3000 1)) ; Statement: r1 = virtualinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token getToken(int)>(1) 
 ; Statement: if r16 != null goto $i0 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk> 
(assert (not (= var984 null-var3200))) ; Cond: r16 != null 
(define-const var522 Int (jj_ntk/549669294 var3000)) ; Statement: $i0 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk> 
(define-const var1615 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i16 = (int) -1 
 ; Statement: if $i0 != $i16 goto $i10 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk> 
(assert (not (= var522 var1615))) ; Cond: $i0 != $i16 
(define-const var1204 Int (jj_ntk/549669294 var3000)) ; Statement: $i10 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk> 
(assert true) ; Non Conditional
 ; Statement: lookupswitch($i10) {     case 30: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 32: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 35: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 37: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 41: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 48: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 55: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 57: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 66: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 78: goto specialinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token jj_consume_token(int)>(78);     case 81: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 110: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 151: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     default: goto $r13 = r0.<org.javacc.parser.JavaCCParser: int[] jj_la1>; } 
(assert (and (= var1204 78) (and (not (= var1204 66)) (and (not (= var1204 57)) (and (not (= var1204 55)) (and (not (= var1204 48)) (and (not (= var1204 41)) (and (not (= var1204 37)) (and (not (= var1204 35)) (and (not (= var1204 32)) (and (not (= var1204 30)) true))))))))))) ; Intersect: Cond: $i10 == 78  and Intersect: Negate: Cond: $i10 == 66   and Intersect: Negate: Cond: $i10 == 57   and Intersect: Negate: Cond: $i10 == 55   and Intersect: Negate: Cond: $i10 == 48   and Intersect: Negate: Cond: $i10 == 41   and Intersect: Negate: Cond: $i10 == 37   and Intersect: Negate: Cond: $i10 == 35   and Intersect: Negate: Cond: $i10 == 32   and Intersect: Negate: Cond: $i10 == 30   and Non Conditional          
(assert true)
;(assert (jj_consume_token/1648575159 var3000 78)) ; Statement: specialinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token jj_consume_token(int)>(78) 

(declare-const var3000!1 var2357)
(declare-const var3206 Int)
(define-const var3586 Int (jj_ntk/549669294 var3000!1)) ; Statement: $i1 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk> 
(define-const var2496 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i18 = (int) -1 
 ; Statement: if $i1 != $i18 goto $i11 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk> 
(assert (not (= var3586 var2496))) ; Cond: $i1 != $i18 
(define-const var3033 Int (jj_ntk/549669294 var3000!1)) ; Statement: $i11 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk> 
(assert true) ; Non Conditional
 ; Statement: lookupswitch($i11) {     case 121: goto specialinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token jj_consume_token(int)>(121);     default: goto $r8 = r0.<org.javacc.parser.JavaCCParser: int[] jj_la1>; } 
(assert (and (= var3033 121) true)) ; Intersect: Cond: $i11 == 121  and Non Conditional 
(assert true)
;(assert (jj_consume_token/1648575159 var3000!1 121)) ; Statement: specialinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token jj_consume_token(int)>(121) 

(declare-const var3000!2 var2357)
(declare-const var569 Int)
 ; Statement: goto [?= $r17 = virtualinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token getToken(int)>(0)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1968 var618 (getToken/1999213251 var3000!2 0)) ; Statement: $r17 = virtualinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token getToken(int)>(0) 
(define-const var1784 var618 var263) ; Statement: r18 = r1 
(assert true) ; Non Conditional
(define-const var810 String (image/197050796 var1784)) ; Statement: $r19 = r18.<org.javacc.parser.Token: java.lang.String image> 
(assert true)
(define-const var1121 Bool (isAllowed/-930151217 var3000!2 var1784)) ; Statement: $z0 = specialinvoke r0.<org.javacc.parser.JavaCCParser: boolean isAllowed(org.javacc.parser.Token)>(r18) 
 ; Statement: if $z0 == 0 goto $r24 = new org.javacc.parser.ParseException 
(assert (= (ite var1121 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2610 var2136 var2136-init) ; Statement: $r24 = new org.javacc.parser.ParseException 
(define-const var3901 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3901)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3901!1 String)
(assert (= var3901!1 ""))
(define-const var3921 String (image/197050796 var1784)) ; Statement: $r4 = r18.<org.javacc.parser.Token: java.lang.String image> 
(assert true)
(define-const var3969 String (append/672562846 var3901!1 var3921)) ; Statement: $r5 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3901!2 String)
(assert (= var3901!2 (str.++ var3901!1 var3921)))
(assert true)
(define-const var3602 String (append/672562846 var3969 " is invalid in this context")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is invalid in this context") 
(declare-const var3969!1 String)
(assert (= var3969!1 (str.++ var3969 " is invalid in this context")))
(assert true)
(define-const var2691 String (toString/-2075883882 var3602)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1157378735 var2610 var2691)) ; Statement: specialinvoke $r24.<org.javacc.parser.ParseException: void <init>(java.lang.String)>($r7) 

(declare-const var2610!1 var2136)
(declare-const var2691!1 String)
 ; Statement: throw $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {getToken/1999213251=([org.javacc.parser.JavaCCParser, int], org.javacc.parser.Token), jj_ntk/549669294=([org.javacc.parser.JavaCCParser], int), cast-from-Int-to-Int=([int], int), jj_consume_token/1648575159=([org.javacc.parser.JavaCCParser, int], org.javacc.parser.Token), image/197050796=([org.javacc.parser.Token], java.lang.String), isAllowed/-930151217=([org.javacc.parser.JavaCCParser, org.javacc.parser.Token], boolean), var2136-init=([], org.javacc.parser.ParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1157378735=([org.javacc.parser.ParseException, java.lang.String], void)}
; {var2357=org.javacc.parser.JavaCCParser, var3000=r0, var3200=java.util.List, var984=r16, var618=org.javacc.parser.Token, var263=r1, var522=$i0, var1615=$i16, var1204=$i10, var3206=78, var3586=$i1, var2496=$i18, var3033=$i11, var569=121, var1968=$r17, var1784=r18, var810=$r19, var1121=$z0, var2136=org.javacc.parser.ParseException, var2610=$r24, var3901=$r23, var3921=$r4, var3969=$r5, var3602=$r6, var2691=$r7}
; {org.javacc.parser.JavaCCParser=var2357, r0=var3000, java.util.List=var3200, r16=var984, org.javacc.parser.Token=var618, r1=var263, $i0=var522, $i16=var1615, $i10=var1204, 78=var3206, $i1=var3586, $i18=var2496, $i11=var3033, 121=var569, $r17=var1968, r18=var1784, $r19=var810, $z0=var1121, org.javacc.parser.ParseException=var2136, $r24=var2610, $r23=var3901, $r4=var3921, $r5=var3969, $r6=var3602, $r7=var2691}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.javacc.parser.JavaCCParser;	r16 := @parameter0: java.util.List;	r1 = virtualinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token getToken(int)>(1);	if r16 != null goto $i0 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;	$i0 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;	$i16 = (int) -1;	if $i0 != $i16 goto $i10 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;	$i10 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;	lookupswitch($i10) {     case 30: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 32: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 35: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 37: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 41: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 48: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 55: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 57: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 66: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 78: goto specialinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token jj_consume_token(int)>(78);     case 81: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 110: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 151: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     default: goto $r13 = r0.<org.javacc.parser.JavaCCParser: int[] jj_la1>; };	specialinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token jj_consume_token(int)>(78);	$i1 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;	$i18 = (int) -1;	if $i1 != $i18 goto $i11 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;	$i11 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;	lookupswitch($i11) {     case 121: goto specialinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token jj_consume_token(int)>(121);     default: goto $r8 = r0.<org.javacc.parser.JavaCCParser: int[] jj_la1>; };	specialinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token jj_consume_token(int)>(121);	goto [?= $r17 = virtualinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token getToken(int)>(0)];	$r17 = virtualinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token getToken(int)>(0);	r18 = r1;	$r19 = r18.<org.javacc.parser.Token: java.lang.String image>;	$z0 = specialinvoke r0.<org.javacc.parser.JavaCCParser: boolean isAllowed(org.javacc.parser.Token)>(r18);	if $z0 == 0 goto $r24 = new org.javacc.parser.ParseException;	$r24 = new org.javacc.parser.ParseException;	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r4 = r18.<org.javacc.parser.Token: java.lang.String image>;	$r5 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is invalid in this context");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r24.<org.javacc.parser.ParseException: void <init>(java.lang.String)>($r7);	throw $r24
;block_num 11