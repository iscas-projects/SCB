(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3212 0)
(declare-sort var1186 0)
(declare-sort var1745 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3212 var3212)
(declare-const null-String String)
(declare-const null-var1745 var1745)
(declare-const var3769 var3212) ; Statement: r6 := @this: org.hibernate.type.StringNVarcharType 
(assert (not (= var3769 null-var3212)))
(declare-const var2233 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var2233 null-String)))
(declare-const var1957 var1745) ; Statement: r7 := @parameter1: org.hibernate.dialect.Dialect 
(assert (not (= var1957 null-var1745)))
(define-const var2938 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2938)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2938!1 String)
(assert (= var2938!1 ""))
(assert true)
(define-const var3813 String (append/-1166366385 var2938!1 39)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39) 
(declare-const var2938!2 String)
(assert (str.prefixof var2938!1 var2938!2))
(assert true)
(define-const var3697 String (append/672562846 var3813 var2233)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3813!1 String)
(assert (= var3813!1 (str.++ var3813 var2233)))
(assert true)
(define-const var3505 String (append/-1166366385 var3697 39)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39) 
(declare-const var3697!1 String)
(assert (str.prefixof var3697 var3697!1))
(assert true)
(define-const var1899 String (toString/-2075883882 var3505)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3212=org.hibernate.type.StringNVarcharType, var3769=r6, var2233=r1, var1186=null_type, var1745=org.hibernate.dialect.Dialect, var1957=r7, var2938=$r0, var3813=$r2, var3697=$r3, var3505=$r4, var1899=$r5}
; {org.hibernate.type.StringNVarcharType=var3212, r6=var3769, r1=var2233, null_type=var1186, org.hibernate.dialect.Dialect=var1745, r7=var1957, $r0=var2938, $r2=var3813, $r3=var3697, $r4=var3505, $r5=var1899}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.type.StringNVarcharType;	r1 := @parameter0: java.lang.String;	r7 := @parameter1: org.hibernate.dialect.Dialect;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1