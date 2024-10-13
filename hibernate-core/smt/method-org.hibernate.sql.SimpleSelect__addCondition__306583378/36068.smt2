(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2073 0)
(declare-sort var1039 0)
(declare-sort var3516 0)
(declare-sort var2102 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun and/-1215306468 (var2073) void)
(declare-fun whereTokens/-997014284 (var2073) var3516)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var3516_add/328494887 (var3516 var2102) Bool)
(declare-fun cast-from-String-to-var2102 (String) var2102)
(declare-const null-var2073 var2073)
(declare-const null-String String)
(declare-const var3901 var2073) ; Statement: r0 := @this: org.hibernate.sql.SimpleSelect 
(assert (not (= var3901 null-var2073)))
(declare-const var1569 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var1569 null-String)))
(declare-const var1266 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var1266 null-String)))
(declare-const var1337 String) ; Statement: r8 := @parameter2: java.lang.String 
(assert (not (= var1337 null-String)))
(assert true)
;(assert (and/-1215306468 var3901)) ; Statement: specialinvoke r0.<org.hibernate.sql.SimpleSelect: void and()>() 

(declare-const var3901!1 var2073)
(define-const var633 var3516 (whereTokens/-997014284 var3901!1)) ; Statement: $r2 = r0.<org.hibernate.sql.SimpleSelect: java.util.List whereTokens> 
(define-const var3567 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3567)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3567!1 String)
(assert (= var3567!1 ""))
(assert true)
(define-const var2578 String (append/672562846 var3567!1 var1569)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3567!2 String)
(assert (= var3567!2 (str.++ var3567!1 var1569)))
(assert true)
(define-const var2693 String (append/-1166366385 var2578 32)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var2578!1 String)
(assert (str.prefixof var2578 var2578!1))
(assert true)
(define-const var3251 String (append/672562846 var2693 var1266)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var2693!1 String)
(assert (= var2693!1 (str.++ var2693 var1266)))
(assert true)
(define-const var1740 String (append/-1166366385 var3251 32)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var3251!1 String)
(assert (str.prefixof var3251 var3251!1))
(assert true)
(define-const var1141 String (append/672562846 var1740 var1337)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r8) 
(declare-const var1740!1 String)
(assert (= var1740!1 (str.++ var1740 var1337)))
(assert true)
(define-const var2320 String (toString/-2075883882 var1141)) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var3516_add/328494887 var633 (cast-from-String-to-var2102 var2320))) ; Statement: interfaceinvoke $r2.<java.util.List: boolean add(java.lang.Object)>($r11) 

(declare-const var633!1 var3516)
(declare-const var2320!1 String)
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {and/-1215306468=([org.hibernate.sql.SimpleSelect], void), whereTokens/-997014284=([org.hibernate.sql.SimpleSelect], java.util.List), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var3516_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var2102=([java.lang.String], java.lang.Object)}
; {var2073=org.hibernate.sql.SimpleSelect, var3901=r0, var1569=r3, var1039=null_type, var1266=r5, var1337=r8, var3516=java.util.List, var633=$r2, var3567=$r1, var2578=$r4, var2693=$r6, var3251=$r7, var1740=$r9, var1141=$r10, var2320=$r11, var2102=java.lang.Object}
; {org.hibernate.sql.SimpleSelect=var2073, r0=var3901, r3=var1569, null_type=var1039, r5=var1266, r8=var1337, java.util.List=var3516, $r2=var633, $r1=var3567, $r4=var2578, $r6=var2693, $r7=var3251, $r9=var1740, $r10=var1141, $r11=var2320, java.lang.Object=var2102}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.sql.SimpleSelect;	r3 := @parameter0: java.lang.String;	r5 := @parameter1: java.lang.String;	r8 := @parameter2: java.lang.String;	specialinvoke r0.<org.hibernate.sql.SimpleSelect: void and()>();	$r2 = r0.<org.hibernate.sql.SimpleSelect: java.util.List whereTokens>;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r2.<java.util.List: boolean add(java.lang.Object)>($r11);	return r0
;block_num 1