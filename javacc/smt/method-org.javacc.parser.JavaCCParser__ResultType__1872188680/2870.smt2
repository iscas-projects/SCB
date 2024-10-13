(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1314 0)
(declare-sort var1570 0)
(declare-sort var3286 0)
(declare-sort var227 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getToken/1999213251 (var1314 Int) var3286)
(declare-fun jj_ntk/549669294 (var1314) Int)
(define-fun cast-from-Int-to-Int ((arg Int)) Int arg)
(declare-fun jj_consume_token/1648575159 (var1314 Int) var3286)
(declare-fun jj_ntk/-941081802 (var1314) Int)
(declare-fun jj_la1/549669294 (var1314) (Array Int Int))
(declare-fun jj_gen/549669294 (var1314) Int)
(declare-fun image/197050796 (var3286) String)
(declare-fun isAllowed/-930151217 (var1314 var3286) Bool)
(declare-fun var227-init () var227)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/1157378735 (var227 String) void)
(declare-const null-var1314 var1314)
(declare-const null-var1570 var1570)
(declare-const null-__Array__Int__Int__ (Array Int Int))
(declare-const var1715 var1314) ; Statement: r0 := @this: org.javacc.parser.JavaCCParser 
(assert (not (= var1715 null-var1314)))
(declare-const var3209 var1570) ; Statement: r16 := @parameter0: java.util.List 
(assert (not (= var3209 null-var1570)))
(assert true)
(define-const var706 var3286 (getToken/1999213251 var1715 1)) ; Statement: r1 = virtualinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token getToken(int)>(1) 
 ; Statement: if r16 != null goto $i0 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk> 
(assert (not (= var3209 null-var1570))) ; Cond: r16 != null 
(define-const var1304 Int (jj_ntk/549669294 var1715)) ; Statement: $i0 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk> 
(define-const var543 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i16 = (int) -1 
 ; Statement: if $i0 != $i16 goto $i10 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk> 
(assert (not (= var1304 var543))) ; Cond: $i0 != $i16 
(define-const var3848 Int (jj_ntk/549669294 var1715)) ; Statement: $i10 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk> 
(assert true) ; Non Conditional
 ; Statement: lookupswitch($i10) {     case 30: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 32: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 35: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 37: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 41: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 48: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 55: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 57: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 66: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 78: goto specialinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token jj_consume_token(int)>(78);     case 81: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 110: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 151: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     default: goto $r13 = r0.<org.javacc.parser.JavaCCParser: int[] jj_la1>; } 
(assert (and (= var3848 78) (and (not (= var3848 66)) (and (not (= var3848 57)) (and (not (= var3848 55)) (and (not (= var3848 48)) (and (not (= var3848 41)) (and (not (= var3848 37)) (and (not (= var3848 35)) (and (not (= var3848 32)) (and (not (= var3848 30)) true))))))))))) ; Intersect: Cond: $i10 == 78  and Intersect: Negate: Cond: $i10 == 66   and Intersect: Negate: Cond: $i10 == 57   and Intersect: Negate: Cond: $i10 == 55   and Intersect: Negate: Cond: $i10 == 48   and Intersect: Negate: Cond: $i10 == 41   and Intersect: Negate: Cond: $i10 == 37   and Intersect: Negate: Cond: $i10 == 35   and Intersect: Negate: Cond: $i10 == 32   and Intersect: Negate: Cond: $i10 == 30   and Non Conditional          
(assert true)
;(assert (jj_consume_token/1648575159 var1715 78)) ; Statement: specialinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token jj_consume_token(int)>(78) 

(declare-const var1715!1 var1314)
(declare-const var2198 Int)
(define-const var2655 Int (jj_ntk/549669294 var1715!1)) ; Statement: $i1 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk> 
(define-const var3592 Int (cast-from-Int-to-Int (- 1))) ; Statement: $i18 = (int) -1 
 ; Statement: if $i1 != $i18 goto $i11 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk> 
(assert (not (not (= var2655 var3592)))) ; Negate: Cond: $i1 != $i18  
(assert true)
(define-const var1482 Int (jj_ntk/-941081802 var1715!1)) ; Statement: $i11 = specialinvoke r0.<org.javacc.parser.JavaCCParser: int jj_ntk()>() 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: lookupswitch($i11) {     case 121: goto specialinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token jj_consume_token(int)>(121);     default: goto $r8 = r0.<org.javacc.parser.JavaCCParser: int[] jj_la1>; } 
(assert (and (not (= var1482 121)) true)) ; Intersect: Negate: Cond: $i11 == 121   and Non Conditional 
(define-const var1592 (Array Int Int) (jj_la1/549669294 var1715!1)) ; Statement: $r8 = r0.<org.javacc.parser.JavaCCParser: int[] jj_la1> 
(define-const var2079 Int (jj_gen/549669294 var1715!1)) ; Statement: $i2 = r0.<org.javacc.parser.JavaCCParser: int jj_gen> 
(declare-const var1592!1 (Array Int Int))
(assert (not (= var1592!1 null-__Array__Int__Int__)))
(assert (= (select var1592!1 114) var2079)) ; Statement: $r8[114] = $i2 
 ; Statement: goto [?= $r17 = virtualinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token getToken(int)>(0)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1065 var3286 (getToken/1999213251 var1715!1 0)) ; Statement: $r17 = virtualinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token getToken(int)>(0) 
(define-const var2803 var3286 var706) ; Statement: r18 = r1 
(assert true) ; Non Conditional
(define-const var3499 String (image/197050796 var2803)) ; Statement: $r19 = r18.<org.javacc.parser.Token: java.lang.String image> 
(assert true)
(define-const var2074 Bool (isAllowed/-930151217 var1715!1 var2803)) ; Statement: $z0 = specialinvoke r0.<org.javacc.parser.JavaCCParser: boolean isAllowed(org.javacc.parser.Token)>(r18) 
 ; Statement: if $z0 == 0 goto $r24 = new org.javacc.parser.ParseException 
(assert (= (ite var2074 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3960 var227 var227-init) ; Statement: $r24 = new org.javacc.parser.ParseException 
(define-const var1027 String String-init) ; Statement: $r23 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1027)) ; Statement: specialinvoke $r23.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1027!1 String)
(assert (= var1027!1 ""))
(define-const var62 String (image/197050796 var2803)) ; Statement: $r4 = r18.<org.javacc.parser.Token: java.lang.String image> 
(assert true)
(define-const var466 String (append/672562846 var1027!1 var62)) ; Statement: $r5 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var1027!2 String)
(assert (= var1027!2 (str.++ var1027!1 var62)))
(assert true)
(define-const var3619 String (append/672562846 var466 " is invalid in this context")) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is invalid in this context") 
(declare-const var466!1 String)
(assert (= var466!1 (str.++ var466 " is invalid in this context")))
(assert true)
(define-const var429 String (toString/-2075883882 var3619)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/1157378735 var3960 var429)) ; Statement: specialinvoke $r24.<org.javacc.parser.ParseException: void <init>(java.lang.String)>($r7) 

(declare-const var3960!1 var227)
(declare-const var429!1 String)
 ; Statement: throw $r24 
(check-sat)
(get-model)
(get-unsat-core)
; {getToken/1999213251=([org.javacc.parser.JavaCCParser, int], org.javacc.parser.Token), jj_ntk/549669294=([org.javacc.parser.JavaCCParser], int), cast-from-Int-to-Int=([int], int), jj_consume_token/1648575159=([org.javacc.parser.JavaCCParser, int], org.javacc.parser.Token), jj_ntk/-941081802=([org.javacc.parser.JavaCCParser], int), jj_la1/549669294=([org.javacc.parser.JavaCCParser], int[]), jj_gen/549669294=([org.javacc.parser.JavaCCParser], int), image/197050796=([org.javacc.parser.Token], java.lang.String), isAllowed/-930151217=([org.javacc.parser.JavaCCParser, org.javacc.parser.Token], boolean), var227-init=([], org.javacc.parser.ParseException), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/1157378735=([org.javacc.parser.ParseException, java.lang.String], void)}
; {var1314=org.javacc.parser.JavaCCParser, var1715=r0, var1570=java.util.List, var3209=r16, var3286=org.javacc.parser.Token, var706=r1, var1304=$i0, var543=$i16, var3848=$i10, var2198=78, var2655=$i1, var3592=$i18, var1482=$i11, var1592=$r8, var2079=$i2, var1065=$r17, var2803=r18, var3499=$r19, var2074=$z0, var227=org.javacc.parser.ParseException, var3960=$r24, var1027=$r23, var62=$r4, var466=$r5, var3619=$r6, var429=$r7}
; {org.javacc.parser.JavaCCParser=var1314, r0=var1715, java.util.List=var1570, r16=var3209, org.javacc.parser.Token=var3286, r1=var706, $i0=var1304, $i16=var543, $i10=var3848, 78=var2198, $i1=var2655, $i18=var3592, $i11=var1482, $r8=var1592, $i2=var2079, $r17=var1065, r18=var2803, $r19=var3499, $z0=var2074, org.javacc.parser.ParseException=var227, $r24=var3960, $r23=var1027, $r4=var62, $r5=var466, $r6=var3619, $r7=var429}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.javacc.parser.JavaCCParser;	r16 := @parameter0: java.util.List;	r1 = virtualinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token getToken(int)>(1);	if r16 != null goto $i0 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;	$i0 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;	$i16 = (int) -1;	if $i0 != $i16 goto $i10 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;	$i10 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;	lookupswitch($i10) {     case 30: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 32: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 35: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 37: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 41: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 48: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 55: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 57: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 66: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 78: goto specialinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token jj_consume_token(int)>(78);     case 81: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 110: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     case 151: goto $i3 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;     default: goto $r13 = r0.<org.javacc.parser.JavaCCParser: int[] jj_la1>; };	specialinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token jj_consume_token(int)>(78);	$i1 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;	$i18 = (int) -1;	if $i1 != $i18 goto $i11 = r0.<org.javacc.parser.JavaCCParser: int jj_ntk>;	$i11 = specialinvoke r0.<org.javacc.parser.JavaCCParser: int jj_ntk()>();	goto [?= (branch)];	lookupswitch($i11) {     case 121: goto specialinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token jj_consume_token(int)>(121);     default: goto $r8 = r0.<org.javacc.parser.JavaCCParser: int[] jj_la1>; };	$r8 = r0.<org.javacc.parser.JavaCCParser: int[] jj_la1>;	$i2 = r0.<org.javacc.parser.JavaCCParser: int jj_gen>;	$r8[114] = $i2;	goto [?= $r17 = virtualinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token getToken(int)>(0)];	$r17 = virtualinvoke r0.<org.javacc.parser.JavaCCParser: org.javacc.parser.Token getToken(int)>(0);	r18 = r1;	$r19 = r18.<org.javacc.parser.Token: java.lang.String image>;	$z0 = specialinvoke r0.<org.javacc.parser.JavaCCParser: boolean isAllowed(org.javacc.parser.Token)>(r18);	if $z0 == 0 goto $r24 = new org.javacc.parser.ParseException;	$r24 = new org.javacc.parser.ParseException;	$r23 = new java.lang.StringBuilder;	specialinvoke $r23.<java.lang.StringBuilder: void <init>()>();	$r4 = r18.<org.javacc.parser.Token: java.lang.String image>;	$r5 = virtualinvoke $r23.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" is invalid in this context");	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r24.<org.javacc.parser.ParseException: void <init>(java.lang.String)>($r7);	throw $r24
;block_num 11