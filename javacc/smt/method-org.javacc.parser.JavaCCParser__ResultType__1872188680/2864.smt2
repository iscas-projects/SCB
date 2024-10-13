(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1650 0)
(declare-sort var678 0)
(declare-sort var1521 0)
(declare-sort var1932 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getToken/1999213251 (var1650 Int) var1521)
(declare-fun jj_ntk/549669294 (var1650) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun jj_consume_token/1648575159 (var1650 Int) var1521)
(declare-fun jj_ntk/-941081802 (var1650) Int)
(declare-fun image/197050796 (var1521) String)
(declare-fun isAllowed/-930151217 (var1650 var1521) Bool)
(declare-fun var1932-init () var1932)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1157378735 (var1932 String) void)
(declare-const null-var1650 var1650)
(declare-const null-var678 var678)
(declare-const var1563 var1650) ; Statement: r0 := @this: org.javacc.parser.JavaCCParser 
(assert (not (= var1563 null-var1650)))
(declare-const var438 var678) ; Statement: r16 := @parameter0: java.util.List 
(assert (not (= var438 null-var678)))
(assert true)
(define-const var2363 var1521 (getToken/1999213251 var1563 1)) ; Statement: r1 = virtualinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token getToken(int)>(1) 
 ; Statement: if r16 != null goto $i0 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk> 
(assert (not (= var438 null-var678))) ; Cond: r16 != null 
(define-const var3961 Int (jj_ntk/549669294 var1563)) ; Statement: $i0 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk> 
(define-const var3000 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i16 = (int) -1 
 ; Statement: if $i0 != $i16 goto $i10 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk> 
(assert (not (= var3961 var3000))) ; Cond: $i0 != $i16 
(define-const var3618 Int (jj_ntk/549669294 var1563)) ; Statement: $i10 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk> 
(assert true) ; Non Conditional
 ; Statement: lookupswitch($i10) {     case 30: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 32: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 35: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 37: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 41: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 48: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 55: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 57: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 66: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 78: goto specialinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token jj_consume_token(int)>(78);     case 81: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 110: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 151: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     default: goto $r13 = r0.<org.javacc.parser.JavaCCParser: int[] jj_la1>; } 
(assert (and (= var3618 78) (and (not (= var3618 66)) (and (not (= var3618 57)) (and (not (= var3618 55)) (and (not (= var3618 48)) (and (not (= var3618 41)) (and (not (= var3618 37)) (and (not (= var3618 35)) (and (not (= var3618 32)) (and (not (= var3618 30)) true))))))))))) ; Intersect: Cond: $i10 == 78  and Intersect: Negate: Cond: $i10 == 66   and Intersect: Negate: Cond: $i10 == 57   and Intersect: Negate: Cond: $i10 == 55   and Intersect: Negate: Cond: $i10 == 48   and Intersect: Negate: Cond: $i10 == 41   and Intersect: Negate: Cond: $i10 == 37   and Intersect: Negate: Cond: $i10 == 35   and Intersect: Negate: Cond: $i10 == 32   and Intersect: Negate: Cond: $i10 == 30   and Non Conditional          
(assert true)
;(assert (jj_consume_token/1648575159 var1563 78)) ; Statement: specialinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token jj_consume_token(int)>(78) 

(declare-const var1563!1 var1650)
(declare-const var1097 Int)
(define-const var61 Int (jj_ntk/549669294 var1563!1)) ; Statement: $i1 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk> 
(define-const var3358 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i18 = (int) -1 
 ; Statement: if $i1 != $i18 goto $i11 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk> 
(assert (not (not (= var61 var3358)))) ; Negate: Cond: $i1 != $i18  
(assert true)
(define-const var346 Int (jj_ntk/-941081802 var1563!1)) ; Statement: $i11 = specialinvoke r0.<org.javacc.parser.JavaCCParser: int jj_ntk()>() 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: lookupswitch($i11) {     case 121: goto specialinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token jj_consume_token(int)>(121);     default: goto $r8 = r0.<org.javacc.parser.JavaCCParser: int[] jj_la1>; } 
(assert (and (= var346 121) true)) ; Intersect: Cond: $i11 == 121  and Non Conditional 
(assert true)
;(assert (jj_consume_token/1648575159 var1563!1 121)) ; Statement: specialinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token jj_consume_token(int)>(121) 

(declare-const var1563!2 var1650)
(declare-const var1367 Int)
 ; Statement: goto [?= $r17 = virtualinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token getToken(int)>(0)] 
(assert true) ; Non Conditional
(assert true)
(define-const var3037 var1521 (getToken/1999213251 var1563!2 0)) ; Statement: $r17 = virtualinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token getToken(int)>(0) 
(define-const var3658 var1521 var2363) ; Statement: r18 = r1 
(assert true) ; Non Conditional
(define-const var2968 String (image/197050796 var3658)) ; Statement: $r19 = r18.<org.javacc.parser.Token: java.lang.String image> 
(assert true)
(define-const var224 Bool (isAllowed/-930151217 var1563!2 var3658)) ; Statement: $z0 = specialinvoke r0.<org.javacc.parser.JavaCCParser: boolean isAllowed(org.javacc.parser.Token)>(r18) 
 ; Statement: if $z0 == 0 goto $r24 = new org.javacc.parser.ParseException 
(assert (= (ite var224 1 0) 0)) ; Cond: $z0 == 0 
(define-const var2587 var1932 var1932-init) ; Statement: $r24 = new org.javacc.parser.ParseException 
(define-const var3707 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3707)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3707!1 String)
(assert (= var3707!1 ""))
(define-const var2449 String (image/197050796 var3658)) ; Statement: $r4 = r18.<org.javacc.parser.Token: java.lang.String image> 
(assert true)
(define-const var1742 String (append/672562846 var3707!1 var2449)) ; Statement: $r5 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3707!2 String)
(assert (= var3707!2 (str.++ var3707!1 var2449)))
(assert true)
(define-const var762 String (append/672562846 var1742 " is invalid in this context")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is invalid in this context") 
(declare-const var1742!1 String)
(assert (= var1742!1 (str.++ var1742 " is invalid in this context")))
(assert true)
(define-const var2012 String (toString/-2075883882 var762)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1157378735 var2587 var2012)) ; Statement: specialinvoke $r24.<org.javacc.parser.ParseException: void <init>(java.lang.String)>($r7) 

(declare-const var2587!1 var1932)
(declare-const var2012!1 String)
 ; Statement: throw $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {getToken/1999213251=([org.javacc.parser.JavaCCParser, int], org.javacc.parser.Token), jj_ntk/549669294=([org.javacc.parser.JavaCCParser], int), cast-from-Int-to-Int=([int], int), jj_consume_token/1648575159=([org.javacc.parser.JavaCCParser, int], org.javacc.parser.Token), jj_ntk/-941081802=([org.javacc.parser.JavaCCParser], int), image/197050796=([org.javacc.parser.Token], java.lang.String), isAllowed/-930151217=([org.javacc.parser.JavaCCParser, org.javacc.parser.Token], boolean), var1932-init=([], org.javacc.parser.ParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1157378735=([org.javacc.parser.ParseException, java.lang.String], void)}
; {var1650=org.javacc.parser.JavaCCParser, var1563=r0, var678=java.util.List, var438=r16, var1521=org.javacc.parser.Token, var2363=r1, var3961=$i0, var3000=$i16, var3618=$i10, var1097=78, var61=$i1, var3358=$i18, var346=$i11, var1367=121, var3037=$r17, var3658=r18, var2968=$r19, var224=$z0, var1932=org.javacc.parser.ParseException, var2587=$r24, var3707=$r23, var2449=$r4, var1742=$r5, var762=$r6, var2012=$r7}
; {org.javacc.parser.JavaCCParser=var1650, r0=var1563, java.util.List=var678, r16=var438, org.javacc.parser.Token=var1521, r1=var2363, $i0=var3961, $i16=var3000, $i10=var3618, 78=var1097, $i1=var61, $i18=var3358, $i11=var346, 121=var1367, $r17=var3037, r18=var3658, $r19=var2968, $z0=var224, org.javacc.parser.ParseException=var1932, $r24=var2587, $r23=var3707, $r4=var2449, $r5=var1742, $r6=var762, $r7=var2012}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.javacc.parser.JavaCCParser;	r16 := @parameter0: java.util.List;	r1 = virtualinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token getToken(int)>(1);	if r16 != null goto $i0 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;	$i0 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;	$i16 = (int) -1;	if $i0 != $i16 goto $i10 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;	$i10 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;	lookupswitch($i10) {     case 30: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 32: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 35: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 37: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 41: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 48: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 55: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 57: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 66: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 78: goto specialinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token jj_consume_token(int)>(78);     case 81: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 110: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 151: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     default: goto $r13 = r0.<org.javacc.parser.JavaCCParser: int[] jj_la1>; };	specialinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token jj_consume_token(int)>(78);	$i1 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;	$i18 = (int) -1;	if $i1 != $i18 goto $i11 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;	$i11 = specialinvoke r0.<org.javacc.parser.JavaCCParser: int jj_ntk()>();	goto [?= (branch)];	lookupswitch($i11) {     case 121: goto specialinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token jj_consume_token(int)>(121);     default: goto $r8 = r0.<org.javacc.parser.JavaCCParser: int[] jj_la1>; };	specialinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token jj_consume_token(int)>(121);	goto [?= $r17 = virtualinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token getToken(int)>(0)];	$r17 = virtualinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token getToken(int)>(0);	r18 = r1;	$r19 = r18.<org.javacc.parser.Token: java.lang.String image>;	$z0 = specialinvoke r0.<org.javacc.parser.JavaCCParser: boolean isAllowed(org.javacc.parser.Token)>(r18);	if $z0 == 0 goto $r24 = new org.javacc.parser.ParseException;	$r24 = new org.javacc.parser.ParseException;	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r4 = r18.<org.javacc.parser.Token: java.lang.String image>;	$r5 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is invalid in this context");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r24.<org.javacc.parser.ParseException: void <init>(java.lang.String)>($r7);	throw $r24
;block_num 11