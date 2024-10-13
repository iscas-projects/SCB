(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var871 0)
(declare-sort var3878 0)
(declare-sort var1073 0)
(declare-sort var448 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getToken/1999213251 (var871 Int) var1073)
(declare-fun jj_ntk/549669294 (var871) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun jj_consume_token/1648575159 (var871 Int) var1073)
(declare-fun jj_la1/549669294 (var871) (Array Int Int))
(declare-fun jj_gen/549669294 (var871) Int)
(declare-fun image/197050796 (var1073) String)
(declare-fun isAllowed/-930151217 (var871 var1073) Bool)
(declare-fun var448-init () var448)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1157378735 (var448 String) void)
(declare-const null-var871 var871)
(declare-const null-var3878 var3878)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var3455 var871) ; Statement: r0 := @this: org.javacc.parser.JavaCCParser 
(assert (not (= var3455 null-var871)))
(declare-const var105 var3878) ; Statement: r16 := @parameter0: java.util.List 
(assert (not (= var105 null-var3878)))
(assert true)
(define-const var2451 var1073 (getToken/1999213251 var3455 1)) ; Statement: r1 = virtualinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token getToken(int)>(1) 
 ; Statement: if r16 != null goto $i0 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk> 
(assert (not (= var105 null-var3878))) ; Cond: r16 != null 
(define-const var1995 Int (jj_ntk/549669294 var3455)) ; Statement: $i0 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk> 
(define-const var251 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i16 = (int) -1 
 ; Statement: if $i0 != $i16 goto $i10 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk> 
(assert (not (= var1995 var251))) ; Cond: $i0 != $i16 
(define-const var1092 Int (jj_ntk/549669294 var3455)) ; Statement: $i10 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk> 
(assert true) ; Non Conditional
 ; Statement: lookupswitch($i10) {     case 30: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 32: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 35: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 37: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 41: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 48: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 55: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 57: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 66: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 78: goto specialinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token jj_consume_token(int)>(78);     case 81: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 110: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 151: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     default: goto $r13 = r0.<org.javacc.parser.JavaCCParser: int[] jj_la1>; } 
(assert (and (= var1092 78) (and (not (= var1092 66)) (and (not (= var1092 57)) (and (not (= var1092 55)) (and (not (= var1092 48)) (and (not (= var1092 41)) (and (not (= var1092 37)) (and (not (= var1092 35)) (and (not (= var1092 32)) (and (not (= var1092 30)) true))))))))))) ; Intersect: Cond: $i10 == 78  and Intersect: Negate: Cond: $i10 == 66   and Intersect: Negate: Cond: $i10 == 57   and Intersect: Negate: Cond: $i10 == 55   and Intersect: Negate: Cond: $i10 == 48   and Intersect: Negate: Cond: $i10 == 41   and Intersect: Negate: Cond: $i10 == 37   and Intersect: Negate: Cond: $i10 == 35   and Intersect: Negate: Cond: $i10 == 32   and Intersect: Negate: Cond: $i10 == 30   and Non Conditional          
(assert true)
;(assert (jj_consume_token/1648575159 var3455 78)) ; Statement: specialinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token jj_consume_token(int)>(78) 

(declare-const var3455!1 var871)
(declare-const var3328 Int)
(define-const var309 Int (jj_ntk/549669294 var3455!1)) ; Statement: $i1 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk> 
(define-const var124 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i18 = (int) -1 
 ; Statement: if $i1 != $i18 goto $i11 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk> 
(assert (not (= var309 var124))) ; Cond: $i1 != $i18 
(define-const var1757 Int (jj_ntk/549669294 var3455!1)) ; Statement: $i11 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk> 
(assert true) ; Non Conditional
 ; Statement: lookupswitch($i11) {     case 121: goto specialinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token jj_consume_token(int)>(121);     default: goto $r8 = r0.<org.javacc.parser.JavaCCParser: int[] jj_la1>; } 
(assert (and (not (= var1757 121)) true)) ; Intersect: Negate: Cond: $i11 == 121   and Non Conditional 
(define-const var540 (Array Int Int) (jj_la1/549669294 var3455!1)) ; Statement: $r8 = r0.<org.javacc.parser.JavaCCParser: int[] jj_la1> 
(define-const var329 Int (jj_gen/549669294 var3455!1)) ; Statement: $i2 = r0.<org.javacc.parser.JavaCCParser: int jj_gen> 
(declare-const var540!1 (Array Int Int))
(assert (not (= var540!1 null-__Array__Int__Int__)))
(assert (= (select var540!1 114) var329)) ; Statement: $r8[114] = $i2 
 ; Statement: goto [?= $r17 = virtualinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token getToken(int)>(0)] 
(assert true) ; Non Conditional
(assert true)
(define-const var128 var1073 (getToken/1999213251 var3455!1 0)) ; Statement: $r17 = virtualinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token getToken(int)>(0) 
(define-const var2834 var1073 var2451) ; Statement: r18 = r1 
(assert true) ; Non Conditional
(define-const var678 String (image/197050796 var2834)) ; Statement: $r19 = r18.<org.javacc.parser.Token: java.lang.String image> 
(assert true)
(define-const var1265 Bool (isAllowed/-930151217 var3455!1 var2834)) ; Statement: $z0 = specialinvoke r0.<org.javacc.parser.JavaCCParser: boolean isAllowed(org.javacc.parser.Token)>(r18) 
 ; Statement: if $z0 == 0 goto $r24 = new org.javacc.parser.ParseException 
(assert (= (ite var1265 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1 var448 var448-init) ; Statement: $r24 = new org.javacc.parser.ParseException 
(define-const var1738 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1738)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1738!1 String)
(assert (= var1738!1 ""))
(define-const var1124 String (image/197050796 var2834)) ; Statement: $r4 = r18.<org.javacc.parser.Token: java.lang.String image> 
(assert true)
(define-const var3067 String (append/672562846 var1738!1 var1124)) ; Statement: $r5 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1738!2 String)
(assert (= var1738!2 (str.++ var1738!1 var1124)))
(assert true)
(define-const var1753 String (append/672562846 var3067 " is invalid in this context")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is invalid in this context") 
(declare-const var3067!1 String)
(assert (= var3067!1 (str.++ var3067 " is invalid in this context")))
(assert true)
(define-const var2885 String (toString/-2075883882 var1753)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1157378735 var1 var2885)) ; Statement: specialinvoke $r24.<org.javacc.parser.ParseException: void <init>(java.lang.String)>($r7) 

(declare-const var1!1 var448)
(declare-const var2885!1 String)
 ; Statement: throw $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {getToken/1999213251=([org.javacc.parser.JavaCCParser, int], org.javacc.parser.Token), jj_ntk/549669294=([org.javacc.parser.JavaCCParser], int), cast-from-Int-to-Int=([int], int), jj_consume_token/1648575159=([org.javacc.parser.JavaCCParser, int], org.javacc.parser.Token), jj_la1/549669294=([org.javacc.parser.JavaCCParser], int[]), jj_gen/549669294=([org.javacc.parser.JavaCCParser], int), image/197050796=([org.javacc.parser.Token], java.lang.String), isAllowed/-930151217=([org.javacc.parser.JavaCCParser, org.javacc.parser.Token], boolean), var448-init=([], org.javacc.parser.ParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1157378735=([org.javacc.parser.ParseException, java.lang.String], void)}
; {var871=org.javacc.parser.JavaCCParser, var3455=r0, var3878=java.util.List, var105=r16, var1073=org.javacc.parser.Token, var2451=r1, var1995=$i0, var251=$i16, var1092=$i10, var3328=78, var309=$i1, var124=$i18, var1757=$i11, var540=$r8, var329=$i2, var128=$r17, var2834=r18, var678=$r19, var1265=$z0, var448=org.javacc.parser.ParseException, var1=$r24, var1738=$r23, var1124=$r4, var3067=$r5, var1753=$r6, var2885=$r7}
; {org.javacc.parser.JavaCCParser=var871, r0=var3455, java.util.List=var3878, r16=var105, org.javacc.parser.Token=var1073, r1=var2451, $i0=var1995, $i16=var251, $i10=var1092, 78=var3328, $i1=var309, $i18=var124, $i11=var1757, $r8=var540, $i2=var329, $r17=var128, r18=var2834, $r19=var678, $z0=var1265, org.javacc.parser.ParseException=var448, $r24=var1, $r23=var1738, $r4=var1124, $r5=var3067, $r6=var1753, $r7=var2885}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.javacc.parser.JavaCCParser;	r16 := @parameter0: java.util.List;	r1 = virtualinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token getToken(int)>(1);	if r16 != null goto $i0 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;	$i0 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;	$i16 = (int) -1;	if $i0 != $i16 goto $i10 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;	$i10 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;	lookupswitch($i10) {     case 30: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 32: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 35: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 37: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 41: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 48: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 55: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 57: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 66: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 78: goto specialinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token jj_consume_token(int)>(78);     case 81: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 110: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 151: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     default: goto $r13 = r0.<org.javacc.parser.JavaCCParser: int[] jj_la1>; };	specialinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token jj_consume_token(int)>(78);	$i1 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;	$i18 = (int) -1;	if $i1 != $i18 goto $i11 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;	$i11 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;	lookupswitch($i11) {     case 121: goto specialinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token jj_consume_token(int)>(121);     default: goto $r8 = r0.<org.javacc.parser.JavaCCParser: int[] jj_la1>; };	$r8 = r0.<org.javacc.parser.JavaCCParser: int[] jj_la1>;	$i2 = r0.<org.javacc.parser.JavaCCParser: int jj_gen>;	$r8[114] = $i2;	goto [?= $r17 = virtualinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token getToken(int)>(0)];	$r17 = virtualinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token getToken(int)>(0);	r18 = r1;	$r19 = r18.<org.javacc.parser.Token: java.lang.String image>;	$z0 = specialinvoke r0.<org.javacc.parser.JavaCCParser: boolean isAllowed(org.javacc.parser.Token)>(r18);	if $z0 == 0 goto $r24 = new org.javacc.parser.ParseException;	$r24 = new org.javacc.parser.ParseException;	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r4 = r18.<org.javacc.parser.Token: java.lang.String image>;	$r5 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is invalid in this context");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r24.<org.javacc.parser.ParseException: void <init>(java.lang.String)>($r7);	throw $r24
;block_num 11