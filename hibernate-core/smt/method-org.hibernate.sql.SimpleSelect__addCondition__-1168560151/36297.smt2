(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3265 0)
(declare-sort var2119 0)
(declare-sort var396 0)
(declare-sort var192 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun and/-1215306468 (var3265) void)
(declare-fun whereTokens/-997014284 (var3265) var396)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var396_add/328494887 (var396 var192) Bool)
(declare-fun cast-from-String-to-var192 (String) var192)
(declare-const null-var3265 var3265)
(declare-const null-String String)
(declare-const var3500 var3265) ; Statement: r0 := @this: org.hibernate.sql.SimpleSelect 
(assert (not (= var3500 null-var3265)))
(declare-const var2710 String) ; Statement: r3 := @parameter0: java.lang.String 
(assert (not (= var2710 null-String)))
(declare-const var813 String) ; Statement: r5 := @parameter1: java.lang.String 
(assert (not (= var813 null-String)))
(assert true)
;(assert (and/-1215306468 var3500)) ; Statement: specialinvoke r0.<org.hibernate.sql.SimpleSelect: void and()>() 

(declare-const var3500!1 var3265)
(define-const var668 var396 (whereTokens/-997014284 var3500!1)) ; Statement: $r2 = r0.<org.hibernate.sql.SimpleSelect: java.util.List whereTokens> 
(define-const var2565 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2565)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2565!1 String)
(assert (= var2565!1 ""))
(assert true)
(define-const var1289 String (append/672562846 var2565!1 var2710)) ; Statement: $r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var2565!2 String)
(assert (= var2565!2 (str.++ var2565!1 var2710)))
(assert true)
(define-const var1319 String (append/-1166366385 var1289 32)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var1289!1 String)
(assert (str.prefixof var1289 var1289!1))
(assert true)
(define-const var1562 String (append/672562846 var1319 var813)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var1319!1 String)
(assert (= var1319!1 (str.++ var1319 var813)))
(assert true)
(define-const var2261 String (toString/-2075883882 var1562)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var396_add/328494887 var668 (cast-from-String-to-var192 var2261))) ; Statement: interfaceinvoke $r2.<java.util.List: boolean add(java.lang.Object)>($r8) 

(declare-const var668!1 var396)
(declare-const var2261!1 String)
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {and/-1215306468=([org.hibernate.sql.SimpleSelect], void), whereTokens/-997014284=([org.hibernate.sql.SimpleSelect], java.util.List), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var396_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-String-to-var192=([java.lang.String], java.lang.Object)}
; {var3265=org.hibernate.sql.SimpleSelect, var3500=r0, var2710=r3, var2119=null_type, var813=r5, var396=java.util.List, var668=$r2, var2565=$r1, var1289=$r4, var1319=$r6, var1562=$r7, var2261=$r8, var192=java.lang.Object}
; {org.hibernate.sql.SimpleSelect=var3265, r0=var3500, r3=var2710, null_type=var2119, r5=var813, java.util.List=var396, $r2=var668, $r1=var2565, $r4=var1289, $r6=var1319, $r7=var1562, $r8=var2261, java.lang.Object=var192}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.sql.SimpleSelect;	r3 := @parameter0: java.lang.String;	r5 := @parameter1: java.lang.String;	specialinvoke r0.<org.hibernate.sql.SimpleSelect: void and()>();	$r2 = r0.<org.hibernate.sql.SimpleSelect: java.util.List whereTokens>;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r4 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke $r2.<java.util.List: boolean add(java.lang.Object)>($r8);	return r0
;block_num 1