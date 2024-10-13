(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1039 0)
(declare-sort var2408 0)
(declare-sort var3316 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun append/-1166366385 (String Int) String)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1039 var1039)
(declare-const null-String String)
(declare-const null-var3316 var3316)
(declare-const var2525 var1039) ; Statement: r6 := @this: org.hibernate.type.StringType 
(assert (not (= var2525 null-var1039)))
(declare-const var3154 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3154 null-String)))
(declare-const var422 var3316) ; Statement: r7 := @parameter1: org.hibernate.dialect.Dialect 
(assert (not (= var422 null-var3316)))
(define-const var1267 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1267)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1267!1 String)
(assert (= var1267!1 ""))
(assert true)
(define-const var407 String (append/-1166366385 var1267!1 39)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39) 
(declare-const var1267!2 String)
(assert (str.prefixof var1267!1 var1267!2))
(assert true)
(define-const var3642 String (append/672562846 var407 var3154)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var407!1 String)
(assert (= var407!1 (str.++ var407 var3154)))
(assert true)
(define-const var2176 String (append/-1166366385 var3642 39)) ; Statement: $r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39) 
(declare-const var3642!1 String)
(assert (str.prefixof var3642 var3642!1))
(assert true)
(define-const var1212 String (toString/-2075883882 var2176)) ; Statement: $r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r5 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1039=org.hibernate.type.StringType, var2525=r6, var3154=r1, var2408=null_type, var3316=org.hibernate.dialect.Dialect, var422=r7, var1267=$r0, var407=$r2, var3642=$r3, var2176=$r4, var1212=$r5}
; {org.hibernate.type.StringType=var1039, r6=var2525, r1=var3154, null_type=var2408, org.hibernate.dialect.Dialect=var3316, r7=var422, $r0=var1267, $r2=var407, $r3=var3642, $r4=var2176, $r5=var1212}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r6 := @this: org.hibernate.type.StringType;	r1 := @parameter0: java.lang.String;	r7 := @parameter1: org.hibernate.dialect.Dialect;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39);	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r4 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(39);	$r5 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.String toString()>();	return $r5
;block_num 1