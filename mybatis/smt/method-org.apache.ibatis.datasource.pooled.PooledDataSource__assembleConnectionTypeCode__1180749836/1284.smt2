(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1102 0)
(declare-sort var2629 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var1102 var1102)
(declare-const null-String String)
(declare-const var2360 var1102) ; Statement: r9 := @this: org.apache.ibatis.datasource.pooled.PooledDataSource 
(assert (not (= var2360 null-var1102)))
(declare-const var1911 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var1911 null-String)))
(declare-const var2117 String) ; Statement: r3 := @parameter1: java.lang.String 
(assert (not (= var2117 null-String)))
(declare-const var1844 String) ; Statement: r5 := @parameter2: java.lang.String 
(assert (not (= var1844 null-String)))
(define-const var352 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var352)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var352!1 String)
(assert (= var352!1 ""))
(assert true)
(define-const var3353 String (append/672562846 var352!1 "")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("") 
(declare-const var352!2 String)
(assert (= var352!2 (str.++ var352!1 "")))
(assert true)
(define-const var3517 String (append/672562846 var3353 var1911)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var3353!1 String)
(assert (= var3353!1 (str.++ var3353 var1911)))
(assert true)
(define-const var1342 String (append/672562846 var3517 var2117)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3) 
(declare-const var3517!1 String)
(assert (= var3517!1 (str.++ var3517 var2117)))
(assert true)
(define-const var283 String (append/672562846 var1342 var1844)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var1342!1 String)
(assert (= var1342!1 (str.++ var1342 var1844)))
(assert true)
(define-const var1136 String (toString/-2075883882 var283)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
(define-const var1605 Int (hashCode/-467973558 var1136)) ; Statement: $i0 = virtualinvoke $r8.<java.lang.String: int hashCode()>() 
 ; Statement: return $i0 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), hashCode/-467973558=([java.lang.String], int)}
; {var1102=org.apache.ibatis.datasource.pooled.PooledDataSource, var2360=r9, var1911=r1, var2629=null_type, var2117=r3, var1844=r5, var352=$r0, var3353=$r2, var3517=$r4, var1342=$r6, var283=$r7, var1136=$r8, var1605=$i0}
; {org.apache.ibatis.datasource.pooled.PooledDataSource=var1102, r9=var2360, r1=var1911, null_type=var2629, r3=var2117, r5=var1844, $r0=var352, $r2=var3353, $r4=var3517, $r6=var1342, $r7=var283, $r8=var1136, $i0=var1605}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>;	<java.lang.String: int hashCode()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 4,"<java.lang.StringBuilder: java.lang.String toString()>": 1,"<java.lang.String: int hashCode()>": 1}
;stmts r9 := @this: org.apache.ibatis.datasource.pooled.PooledDataSource;	r1 := @parameter0: java.lang.String;	r3 := @parameter1: java.lang.String;	r5 := @parameter2: java.lang.String;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("");	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r3);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	$i0 = virtualinvoke $r8.<java.lang.String: int hashCode()>();	return $i0
;block_num 1