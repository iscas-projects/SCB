(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3567 0)
(declare-sort var2134 0)
(declare-sort var3261 0)
(declare-sort var3271 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getToken/1999213251 (var3567 Int) var3261)
(declare-fun jj_ntk/549669294 (var3567) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun jj_ntk/-941081802 (var3567) Int)
(declare-fun jj_consume_token/1648575159 (var3567 Int) var3261)
(declare-fun jj_la1/549669294 (var3567) (Array Int Int))
(declare-fun jj_gen/549669294 (var3567) Int)
(declare-fun image/197050796 (var3261) String)
(declare-fun isAllowed/-930151217 (var3567 var3261) Bool)
(declare-fun var3271-init () var3271)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1157378735 (var3271 String) void)
(declare-const null-var3567 var3567)
(declare-const null-var2134 var2134)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var2974 var3567) ; Statement: r0 := @this: org.javacc.parser.JavaCCParser 
(assert (not (= var2974 null-var3567)))
(declare-const var1033 var2134) ; Statement: r16 := @parameter0: java.util.List 
(assert (not (= var1033 null-var2134)))
(assert true)
(define-const var3621 var3261 (getToken/1999213251 var2974 1)) ; Statement: r1 = virtualinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token getToken(int)>(1) 
 ; Statement: if r16 != null goto $i0 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk> 
(assert (not (= var1033 null-var2134))) ; Cond: r16 != null 
(define-const var2662 Int (jj_ntk/549669294 var2974)) ; Statement: $i0 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk> 
(define-const var3011 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i16 = (int) -1 
 ; Statement: if $i0 != $i16 goto $i10 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk> 
(assert (not (not (= var2662 var3011)))) ; Negate: Cond: $i0 != $i16  
(assert true)
(define-const var2960 Int (jj_ntk/-941081802 var2974)) ; Statement: $i10 = specialinvoke r0.<org.javacc.parser.JavaCCParser: int jj_ntk()>() 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: lookupswitch($i10) {     case 30: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 32: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 35: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 37: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 41: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 48: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 55: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 57: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 66: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 78: goto specialinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token jj_consume_token(int)>(78);     case 81: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 110: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 151: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     default: goto $r13 = r0.<org.javacc.parser.JavaCCParser: int[] jj_la1>; } 
(assert (and (= var2960 78) (and (not (= var2960 66)) (and (not (= var2960 57)) (and (not (= var2960 55)) (and (not (= var2960 48)) (and (not (= var2960 41)) (and (not (= var2960 37)) (and (not (= var2960 35)) (and (not (= var2960 32)) (and (not (= var2960 30)) true))))))))))) ; Intersect: Cond: $i10 == 78  and Intersect: Negate: Cond: $i10 == 66   and Intersect: Negate: Cond: $i10 == 57   and Intersect: Negate: Cond: $i10 == 55   and Intersect: Negate: Cond: $i10 == 48   and Intersect: Negate: Cond: $i10 == 41   and Intersect: Negate: Cond: $i10 == 37   and Intersect: Negate: Cond: $i10 == 35   and Intersect: Negate: Cond: $i10 == 32   and Intersect: Negate: Cond: $i10 == 30   and Non Conditional          
(assert true)
;(assert (jj_consume_token/1648575159 var2974 78)) ; Statement: specialinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token jj_consume_token(int)>(78) 

(declare-const var2974!1 var3567)
(declare-const var3428 Int)
(define-const var2339 Int (jj_ntk/549669294 var2974!1)) ; Statement: $i1 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk> 
(define-const var306 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i18 = (int) -1 
 ; Statement: if $i1 != $i18 goto $i11 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk> 
(assert (not (not (= var2339 var306)))) ; Negate: Cond: $i1 != $i18  
(assert true)
(define-const var2340 Int (jj_ntk/-941081802 var2974!1)) ; Statement: $i11 = specialinvoke r0.<org.javacc.parser.JavaCCParser: int jj_ntk()>() 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: lookupswitch($i11) {     case 121: goto specialinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token jj_consume_token(int)>(121);     default: goto $r8 = r0.<org.javacc.parser.JavaCCParser: int[] jj_la1>; } 
(assert (and (not (= var2340 121)) true)) ; Intersect: Negate: Cond: $i11 == 121   and Non Conditional 
(define-const var2290 (Array Int Int) (jj_la1/549669294 var2974!1)) ; Statement: $r8 = r0.<org.javacc.parser.JavaCCParser: int[] jj_la1> 
(define-const var2471 Int (jj_gen/549669294 var2974!1)) ; Statement: $i2 = r0.<org.javacc.parser.JavaCCParser: int jj_gen> 
(declare-const var2290!1 (Array Int Int))
(assert (not (= var2290!1 null-__Array__Int__Int__)))
(assert (= (select var2290!1 114) var2471)) ; Statement: $r8[114] = $i2 
 ; Statement: goto [?= $r17 = virtualinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token getToken(int)>(0)] 
(assert true) ; Non Conditional
(assert true)
(define-const var2567 var3261 (getToken/1999213251 var2974!1 0)) ; Statement: $r17 = virtualinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token getToken(int)>(0) 
(define-const var130 var3261 var3621) ; Statement: r18 = r1 
(assert true) ; Non Conditional
(define-const var2438 String (image/197050796 var130)) ; Statement: $r19 = r18.<org.javacc.parser.Token: java.lang.String image> 
(assert true)
(define-const var989 Bool (isAllowed/-930151217 var2974!1 var130)) ; Statement: $z0 = specialinvoke r0.<org.javacc.parser.JavaCCParser: boolean isAllowed(org.javacc.parser.Token)>(r18) 
 ; Statement: if $z0 == 0 goto $r24 = new org.javacc.parser.ParseException 
(assert (= (ite var989 1 0) 0)) ; Cond: $z0 == 0 
(define-const var327 var3271 var3271-init) ; Statement: $r24 = new org.javacc.parser.ParseException 
(define-const var689 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var689)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var689!1 String)
(assert (= var689!1 ""))
(define-const var1844 String (image/197050796 var130)) ; Statement: $r4 = r18.<org.javacc.parser.Token: java.lang.String image> 
(assert true)
(define-const var1013 String (append/672562846 var689!1 var1844)) ; Statement: $r5 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var689!2 String)
(assert (= var689!2 (str.++ var689!1 var1844)))
(assert true)
(define-const var1789 String (append/672562846 var1013 " is invalid in this context")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is invalid in this context") 
(declare-const var1013!1 String)
(assert (= var1013!1 (str.++ var1013 " is invalid in this context")))
(assert true)
(define-const var3618 String (toString/-2075883882 var1789)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1157378735 var327 var3618)) ; Statement: specialinvoke $r24.<org.javacc.parser.ParseException: void <init>(java.lang.String)>($r7) 

(declare-const var327!1 var3271)
(declare-const var3618!1 String)
 ; Statement: throw $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {getToken/1999213251=([org.javacc.parser.JavaCCParser, int], org.javacc.parser.Token), jj_ntk/549669294=([org.javacc.parser.JavaCCParser], int), cast-from-Int-to-Int=([int], int), jj_ntk/-941081802=([org.javacc.parser.JavaCCParser], int), jj_consume_token/1648575159=([org.javacc.parser.JavaCCParser, int], org.javacc.parser.Token), jj_la1/549669294=([org.javacc.parser.JavaCCParser], int[]), jj_gen/549669294=([org.javacc.parser.JavaCCParser], int), image/197050796=([org.javacc.parser.Token], java.lang.String), isAllowed/-930151217=([org.javacc.parser.JavaCCParser, org.javacc.parser.Token], boolean), var3271-init=([], org.javacc.parser.ParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1157378735=([org.javacc.parser.ParseException, java.lang.String], void)}
; {var3567=org.javacc.parser.JavaCCParser, var2974=r0, var2134=java.util.List, var1033=r16, var3261=org.javacc.parser.Token, var3621=r1, var2662=$i0, var3011=$i16, var2960=$i10, var3428=78, var2339=$i1, var306=$i18, var2340=$i11, var2290=$r8, var2471=$i2, var2567=$r17, var130=r18, var2438=$r19, var989=$z0, var3271=org.javacc.parser.ParseException, var327=$r24, var689=$r23, var1844=$r4, var1013=$r5, var1789=$r6, var3618=$r7}
; {org.javacc.parser.JavaCCParser=var3567, r0=var2974, java.util.List=var2134, r16=var1033, org.javacc.parser.Token=var3261, r1=var3621, $i0=var2662, $i16=var3011, $i10=var2960, 78=var3428, $i1=var2339, $i18=var306, $i11=var2340, $r8=var2290, $i2=var2471, $r17=var2567, r18=var130, $r19=var2438, $z0=var989, org.javacc.parser.ParseException=var3271, $r24=var327, $r23=var689, $r4=var1844, $r5=var1013, $r6=var1789, $r7=var3618}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.javacc.parser.JavaCCParser;	r16 := @parameter0: java.util.List;	r1 = virtualinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token getToken(int)>(1);	if r16 != null goto $i0 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;	$i0 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;	$i16 = (int) -1;	if $i0 != $i16 goto $i10 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;	$i10 = specialinvoke r0.<org.javacc.parser.JavaCCParser: int jj_ntk()>();	goto [?= (branch)];	lookupswitch($i10) {     case 30: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 32: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 35: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 37: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 41: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 48: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 55: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 57: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 66: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 78: goto specialinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token jj_consume_token(int)>(78);     case 81: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 110: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 151: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     default: goto $r13 = r0.<org.javacc.parser.JavaCCParser: int[] jj_la1>; };	specialinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token jj_consume_token(int)>(78);	$i1 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;	$i18 = (int) -1;	if $i1 != $i18 goto $i11 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;	$i11 = specialinvoke r0.<org.javacc.parser.JavaCCParser: int jj_ntk()>();	goto [?= (branch)];	lookupswitch($i11) {     case 121: goto specialinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token jj_consume_token(int)>(121);     default: goto $r8 = r0.<org.javacc.parser.JavaCCParser: int[] jj_la1>; };	$r8 = r0.<org.javacc.parser.JavaCCParser: int[] jj_la1>;	$i2 = r0.<org.javacc.parser.JavaCCParser: int jj_gen>;	$r8[114] = $i2;	goto [?= $r17 = virtualinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token getToken(int)>(0)];	$r17 = virtualinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token getToken(int)>(0);	r18 = r1;	$r19 = r18.<org.javacc.parser.Token: java.lang.String image>;	$z0 = specialinvoke r0.<org.javacc.parser.JavaCCParser: boolean isAllowed(org.javacc.parser.Token)>(r18);	if $z0 == 0 goto $r24 = new org.javacc.parser.ParseException;	$r24 = new org.javacc.parser.ParseException;	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r4 = r18.<org.javacc.parser.Token: java.lang.String image>;	$r5 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is invalid in this context");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r24.<org.javacc.parser.ParseException: void <init>(java.lang.String)>($r7);	throw $r24
;block_num 11