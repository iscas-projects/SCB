(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1628 0)
(declare-sort var735 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(define-fun startsWith/-1785782452 ((s String) (prefix String)) Bool (str.prefixof prefix s))
(declare-const null-var1628 var1628)
(declare-const null-String String)
(declare-const var3382 var1628) ; Statement: r11 := @this: org.hibernate.cache.spi.support.RegionNameQualifier 
(assert (not (= var3382 null-var1628)))
(declare-const var904 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var904 null-String)))
(declare-const var1896 String) ; Statement: r0 := @parameter1: java.lang.String 
(assert (not (= var1896 null-String)))
(define-const var374 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var374)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var374!1 String)
(assert (= var374!1 ""))
(assert true)
(define-const var2098 String (append/672562846 var374!1 var904)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var374!2 String)
(assert (= var374!2 (str.++ var374!1 var904)))
(assert true)
(define-const var3216 String (append/-1166366385 var2098 46)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46) 
(declare-const var2098!1 String)
(assert (str.prefixof var2098 var2098!1))
(assert true)
(define-const var3304 String (toString/-2075883882 var3216)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var613 Bool (startsWith/-1785782452 var1896 var3304)) ; Statement: $z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>($r5) 
 ; Statement: if $z0 == 0 goto $r6 = new java.lang.StringBuilder 
(assert (not (= (ite var613 1 0) 0))) ; Negate: Cond: $z0 == 0  
 ; Statement: return r0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), startsWith/-1785782452=([java.lang.String, java.lang.String], boolean)}
; {var1628=org.hibernate.cache.spi.support.RegionNameQualifier, var3382=r11, var904=r2, var735=null_type, var1896=r0, var374=$r1, var2098=$r3, var3216=$r4, var3304=$r5, var613=$z0}
; {org.hibernate.cache.spi.support.RegionNameQualifier=var1628, r11=var3382, r2=var904, null_type=var735, r0=var1896, $r1=var374, $r3=var2098, $r4=var3216, $r5=var3304, $z0=var613}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: boolean startsWith(java.lang.String)>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: boolean startsWith(java.lang.String)>": 1}
;stmts r11 := @this: org.hibernate.cache.spi.support.RegionNameQualifier;	r2 := @parameter0: java.lang.String;	r0 := @parameter1: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(46);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	$z0 = virtualinvoke r0.<java.lang.String: boolean startsWith(java.lang.String)>($r5);	if $z0 == 0 goto $r6 = new java.lang.StringBuilder;	return r0
;block_num 2