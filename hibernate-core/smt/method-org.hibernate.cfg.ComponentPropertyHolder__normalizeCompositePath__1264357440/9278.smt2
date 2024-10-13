(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1308 0)
(declare-sort var1341 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun embeddedAttributeName/-798700690 (var1308) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1308 var1308)
(declare-const null-String String)
(declare-const var3639 var1308) ; Statement: r1 := @this: org.hibernate.cfg.ComponentPropertyHolder 
(assert (not (= var3639 null-var1308)))
(declare-const var36 String) ; Statement: r4 := @parameter0: java.lang.String 
(assert (not (= var36 null-String)))
(define-const var132 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var132)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var132!1 String)
(assert (= var132!1 ""))
(define-const var2948 String (embeddedAttributeName/-798700690 var3639)) ; Statement: $r2 = r1.<org.hibernate.cfg.ComponentPropertyHolder: java.lang.String embeddedAttributeName> 
(assert true)
(define-const var2304 String (append/672562846 var132!1 var2948)) ; Statement: $r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2) 
(declare-const var132!2 String)
(assert (= var132!2 (str.++ var132!1 var2948)))
(assert true)
(define-const var102 String (append/-1166366385 var2304 46)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var2304!1 String)
(assert (str.prefixof var2304 var2304!1))
(assert true)
(define-const var3967 String (append/672562846 var102 var36)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var102!1 String)
(assert (= var102!1 (str.++ var102 var36)))
(assert true)
(define-const var1103 String (toString/-2075883882 var3967)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), embeddedAttributeName/-798700690=([org.hibernate.cfg.ComponentPropertyHolder], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1308=org.hibernate.cfg.ComponentPropertyHolder, var3639=r1, var36=r4, var1341=null_type, var132=$r0, var2948=$r2, var2304=$r3, var102=$r5, var3967=$r6, var1103=$r7}
; {org.hibernate.cfg.ComponentPropertyHolder=var1308, r1=var3639, r4=var36, null_type=var1341, $r0=var132, $r2=var2948, $r3=var2304, $r5=var102, $r6=var3967, $r7=var1103}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.hibernate.cfg.ComponentPropertyHolder;	r4 := @parameter0: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = r1.<org.hibernate.cfg.ComponentPropertyHolder: java.lang.String embeddedAttributeName>;	$r3 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	return $r7
;block_num 1