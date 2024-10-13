(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var66 0)
(declare-sort var3790 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun append/-1001720160 ((s String) (tail Int)) String (str.++ s (str.from_int tail)))
(declare-fun String_valueOf/1240665136 (Int) String)
(declare-fun var3790_addEscapes/793830251 (String) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-Bool Bool)
(declare-const null-Int Int)
(declare-const null-String String)
(declare-const var1835 Bool) ; Statement: z0 := @parameter0: boolean 
(assert (not (= var1835 null-Bool)))
(declare-const var2598 Int) ; Statement: i3 := @parameter1: int 
(assert (not (= var2598 null-Int)))
(declare-const var1003 Int) ; Statement: i0 := @parameter2: int 
(assert (not (= var1003 null-Int)))
(declare-const var64 Int) ; Statement: i1 := @parameter3: int 
(assert (not (= var64 null-Int)))
(declare-const var1642 String) ; Statement: r14 := @parameter4: java.lang.String 
(assert (not (= var1642 null-String)))
(declare-const var2990 Int) ; Statement: i2 := @parameter5: int 
(assert (not (= var2990 null-Int)))
(define-const var597 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var597)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var597!1 String)
(assert (= var597!1 ""))
(assert true)
(define-const var724 String (append/672562846 var597!1 "Lexical error at line ")) ; Statement: $r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Lexical error at line ") 
(declare-const var597!2 String)
(assert (= var597!2 (str.++ var597!1 "Lexical error at line ")))
(assert true)
(define-const var3660 String (append/-1001720160 var724 var1003)) ; Statement: $r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0) 
(declare-const var724!1 String)
(assert (str.prefixof var724 var724!1))
(assert true)
(define-const var1893 String (append/672562846 var3660 ", column ")) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", column ") 
(declare-const var3660!1 String)
(assert (= var3660!1 (str.++ var3660 ", column ")))
(assert true)
(define-const var3047 String (append/-1001720160 var1893 var64)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1) 
(declare-const var1893!1 String)
(assert (str.prefixof var1893 var1893!1))
(assert true)
(define-const var3875 String (append/672562846 var3047 ".  Encountered: ")) ; Statement: $r13 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".  Encountered: ") 
(declare-const var3047!1 String)
(assert (= var3047!1 (str.++ var3047 ".  Encountered: ")))
 ; Statement: if z0 == 0 goto $r5 = new java.lang.StringBuilder 
(assert (= (ite var1835 1 0) 0)) ; Cond: z0 == 0 
(define-const var2880 String String-init) ; Statement: $r5 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2880)) ; Statement: specialinvoke $r5.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2880!1 String)
(assert (= var2880!1 ""))
(assert true)
(define-const var973 String (append/672562846 var2880!1 "\u0027")) ; Statement: $r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'") 
(declare-const var2880!2 String)
(assert (= var2880!2 (str.++ var2880!1 "\u0027")))
(define-const var1927 String (String_valueOf/1240665136 var2990)) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i2) 
(define-const var2078 String (var3790_addEscapes/793830251 var1927)) ; Statement: $r7 = staticinvoke <org.apache.ibatis.ognl.TokenMgrError: java.lang.String addEscapes(java.lang.String)>($r6) 
(assert true)
(define-const var932 String (append/672562846 var973 var2078)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var973!1 String)
(assert (= var973!1 (str.++ var973 var2078)))
(assert true)
(define-const var1591 String (append/672562846 var932 "\u0027 (")) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' (") 
(declare-const var932!1 String)
(assert (= var932!1 (str.++ var932 "\u0027 (")))
(assert true)
(define-const var551 String (append/-1001720160 var1591 var2990)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2) 
(declare-const var1591!1 String)
(assert (str.prefixof var1591 var1591!1))
(assert true)
(define-const var2307 String (append/672562846 var551 "),")) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("),") 
(declare-const var551!1 String)
(assert (= var551!1 (str.++ var551 "),")))
(assert true)
(define-const var2949 String (toString/-2075883882 var2307)) ; Statement: $r28 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
(assert true)
(define-const var2233 String (append/672562846 var3875 var2949)) ; Statement: $r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28) 
(declare-const var3875!1 String)
(assert (= var3875!1 (str.++ var3875 var2949)))
 ; Statement: if r14 == null goto $r29 = "" 
(assert (= var1642 null-String)) ; Cond: r14 == null 
(define-const var3773 String "") ; Statement: $r29 = "" 
 ; Statement: goto [?= $r20 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29)] 
(assert true) ; Non Conditional
(assert true)
(define-const var1183 String (append/672562846 var2233 var3773)) ; Statement: $r20 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29) 
(declare-const var2233!1 String)
(assert (= var2233!1 (str.++ var2233 var3773)))
 ; Statement: if i3 != 0 goto $r16 = new java.lang.StringBuilder 
(assert (not (not (= var2598 0)))) ; Negate: Cond: i3 != 0  
(define-const var2506 String "") ; Statement: $r30 = "" 
 ; Statement: goto [?= $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30)] 
(assert true) ; Non Conditional
(assert true)
(define-const var100 String (append/672562846 var1183 var2506)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30) 
(declare-const var1183!1 String)
(assert (= var1183!1 (str.++ var1183 var2506)))
(assert true)
(define-const var1962 String (toString/-2075883882 var100)) ; Statement: $r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1001720160=([java.lang.StringBuilder, int], java.lang.StringBuilder), String_valueOf/1240665136=([int], java.lang.String), var3790_addEscapes/793830251=([java.lang.String], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1835=z0, var2598=i3, var1003=i0, var64=i1, var1642=r14, var66=null_type, var2990=i2, var597=$r0, var724=$r1, var3660=$r2, var1893=$r3, var3047=$r4, var3875=$r13, var2880=$r5, var973=$r8, var1927=$r6, var3790=org.apache.ibatis.ognl.TokenMgrError, var2078=$r7, var932=$r9, var1591=$r10, var551=$r11, var2307=$r12, var2949=$r28, var2233=$r15, var3773=$r29, var1183=$r20, var2506=$r30, var100=$r21, var1962=$r22}
; {z0=var1835, i3=var2598, i0=var1003, i1=var64, r14=var1642, null_type=var66, i2=var2990, $r0=var597, $r1=var724, $r2=var3660, $r3=var1893, $r4=var3047, $r13=var3875, $r5=var2880, $r8=var973, $r6=var1927, org.apache.ibatis.ognl.TokenMgrError=var3790, $r7=var2078, $r9=var932, $r10=var1591, $r11=var551, $r12=var2307, $r28=var2949, $r15=var2233, $r29=var3773, $r20=var1183, $r30=var2506, $r21=var100, $r22=var1962}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String valueOf(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 10,"<java.lang.StringBuilder: java.lang.StringBuilder append(int)>": 3,"<java.lang.String: java.lang.String valueOf(int)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 2}
;stmts z0 := @parameter0: boolean;	i3 := @parameter1: int;	i0 := @parameter2: int;	i1 := @parameter3: int;	r14 := @parameter4: java.lang.String;	i2 := @parameter5: int;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r1 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("Lexical error at line ");	$r2 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i0);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", column ");	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i1);	$r13 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(".  Encountered: ");	if z0 == 0 goto $r5 = new java.lang.StringBuilder;	$r5 = new java.lang.StringBuilder;	specialinvoke $r5.<java.lang.StringBuilder: void <init>()>();	$r8 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\'");	$r6 = staticinvoke <java.lang.String: java.lang.String valueOf(int)>(i2);	$r7 = staticinvoke <org.apache.ibatis.ognl.TokenMgrError: java.lang.String addEscapes(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("\' (");	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(int)>(i2);	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("),");	$r28 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.String toString()>();	$r15 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r28);	if r14 == null goto $r29 = "";	$r29 = "";	goto [?= $r20 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29)];	$r20 = virtualinvoke $r15.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r29);	if i3 != 0 goto $r16 = new java.lang.StringBuilder;	$r30 = "";	goto [?= $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30)];	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r30);	$r22 = virtualinvoke $r21.<java.lang.StringBuilder: java.lang.String toString()>();	return $r22
;block_num 7