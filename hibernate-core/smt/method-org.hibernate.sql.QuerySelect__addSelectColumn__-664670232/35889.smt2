(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2932 0)
(declare-sort var1822 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun addSelectFragmentString/-1014059896 (var2932 String) void)
(declare-const null-var2932 var2932)
(declare-const null-String String)
(declare-const var3154 var2932) ; Statement: r0 := @this: org.hibernate.sql.QuerySelect 
(assert (not (= var3154 null-var2932)))
(declare-const var1926 String) ; Statement: r2 := @parameter0: java.lang.String 
(assert (not (= var1926 null-String)))
(declare-const var2203 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var2203 null-String)))
(define-const var1970 String String-init) ; Statement: $r1 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1970)) ; Statement: specialinvoke $r1.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1970!1 String)
(assert (= var1970!1 ""))
(assert true)
(define-const var1927 String (append/672562846 var1970!1 var1926)) ; Statement: $r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2) 
(declare-const var1970!2 String)
(assert (= var1970!2 (str.++ var1970!1 var1926)))
(assert true)
(define-const var1781 String (append/-1166366385 var1927 32)) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var1927!1 String)
(assert (str.prefixof var1927 var1927!1))
(assert true)
(define-const var3804 String (append/672562846 var1781 var2203)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var1781!1 String)
(assert (= var1781!1 (str.++ var1781 var2203)))
(assert true)
(define-const var290 String (toString/-2075883882 var3804)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (addSelectFragmentString/-1014059896 var3154 var290)) ; Statement: virtualinvoke r0.<org.hibernate.sql.QuerySelect: void addSelectFragmentString(java.lang.String)>($r7) 

(declare-const var3154!1 var2932)
(declare-const var290!1 String)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), addSelectFragmentString/-1014059896=([org.hibernate.sql.QuerySelect, java.lang.String], void)}
; {var2932=org.hibernate.sql.QuerySelect, var3154=r0, var1926=r2, var1822=null_type, var2203=r4, var1970=$r1, var1927=$r3, var1781=$r5, var3804=$r6, var290=$r7}
; {org.hibernate.sql.QuerySelect=var2932, r0=var3154, r2=var1926, null_type=var1822, r4=var2203, $r1=var1970, $r3=var1927, $r5=var1781, $r6=var3804, $r7=var290}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: org.hibernate.sql.QuerySelect;	r2 := @parameter0: java.lang.String;	r4 := @parameter1: java.lang.String;	$r1 = new java.lang.StringBuilder;	specialinvoke $r1.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke $r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r2);	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	virtualinvoke r0.<org.hibernate.sql.QuerySelect: void addSelectFragmentString(java.lang.String)>($r7);	return
;block_num 1