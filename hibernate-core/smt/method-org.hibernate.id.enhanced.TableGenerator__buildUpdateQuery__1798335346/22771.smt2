(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1475 0)
(declare-sort var3352 0)
(declare-sort var3537 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun valueColumnName/-1676129200 (var1475) String)
(declare-fun segmentColumnName/-1676129200 (var1475) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1475 var1475)
(declare-const null-String String)
(declare-const null-var3537 var3537)
(declare-const var3981 var1475) ; Statement: r4 := @this: org.hibernate.id.enhanced.TableGenerator 
(assert (not (= var3981 null-var1475)))
(declare-const var321 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var321 null-String)))
(declare-const var241 var3537) ; Statement: r16 := @parameter1: org.hibernate.boot.model.relational.SqlStringGenerationContext 
(assert (not (= var241 null-var3537)))
(define-const var689 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var689)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var689!1 String)
(assert (= var689!1 ""))
(assert true)
(define-const var2771 String (append/672562846 var689!1 "update ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("update ") 
(declare-const var689!2 String)
(assert (= var689!2 (str.++ var689!1 "update ")))
(assert true)
(define-const var3939 String (append/672562846 var2771 var321)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var2771!1 String)
(assert (= var2771!1 (str.++ var2771 var321)))
(assert true)
(define-const var3340 String (append/672562846 var3939 " set ")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" set ") 
(declare-const var3939!1 String)
(assert (= var3939!1 (str.++ var3939 " set ")))
(define-const var810 String (valueColumnName/-1676129200 var3981)) ; Statement: $r5 = r4.<org.hibernate.id.enhanced.TableGenerator: java.lang.String valueColumnName> 
(assert true)
(define-const var970 String (append/672562846 var3340 var810)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var3340!1 String)
(assert (= var3340!1 (str.++ var3340 var810)))
(assert true)
(define-const var2124 String (append/672562846 var970 "=?  where ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=?  where ") 
(declare-const var970!1 String)
(assert (= var970!1 (str.++ var970 "=?  where ")))
(define-const var2787 String (valueColumnName/-1676129200 var3981)) ; Statement: $r8 = r4.<org.hibernate.id.enhanced.TableGenerator: java.lang.String valueColumnName> 
(assert true)
(define-const var3217 String (append/672562846 var2124 var2787)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var2124!1 String)
(assert (= var2124!1 (str.++ var2124 var2787)))
(assert true)
(define-const var2947 String (append/672562846 var3217 "=? and ")) ; Statement: $r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=? and ") 
(declare-const var3217!1 String)
(assert (= var3217!1 (str.++ var3217 "=? and ")))
(define-const var1642 String (segmentColumnName/-1676129200 var3981)) ; Statement: $r11 = r4.<org.hibernate.id.enhanced.TableGenerator: java.lang.String segmentColumnName> 
(assert true)
(define-const var3139 String (append/672562846 var2947 var1642)) ; Statement: $r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11) 
(declare-const var2947!1 String)
(assert (= var2947!1 (str.++ var2947 var1642)))
(assert true)
(define-const var1173 String (append/672562846 var3139 "=?")) ; Statement: $r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=?") 
(declare-const var3139!1 String)
(assert (= var3139!1 (str.++ var3139 "=?")))
(assert true)
(define-const var1100 String (toString/-2075883882 var1173)) ; Statement: $r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), valueColumnName/-1676129200=([org.hibernate.id.enhanced.TableGenerator], java.lang.String), segmentColumnName/-1676129200=([org.hibernate.id.enhanced.TableGenerator], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1475=org.hibernate.id.enhanced.TableGenerator, var3981=r4, var321=r1, var3352=null_type, var3537=org.hibernate.boot.model.relational.SqlStringGenerationContext, var241=r16, var689=$r0, var2771=$r2, var3939=$r3, var3340=$r6, var810=$r5, var970=$r7, var2124=$r9, var2787=$r8, var3217=$r10, var2947=$r12, var1642=$r11, var3139=$r13, var1173=$r14, var1100=$r15}
; {org.hibernate.id.enhanced.TableGenerator=var1475, r4=var3981, r1=var321, null_type=var3352, org.hibernate.boot.model.relational.SqlStringGenerationContext=var3537, r16=var241, $r0=var689, $r2=var2771, $r3=var3939, $r6=var3340, $r5=var810, $r7=var970, $r9=var2124, $r8=var2787, $r10=var3217, $r12=var2947, $r11=var1642, $r13=var3139, $r14=var1173, $r15=var1100}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 9,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: org.hibernate.id.enhanced.TableGenerator;	r1 := @parameter0: java.lang.String;	r16 := @parameter1: org.hibernate.boot.model.relational.SqlStringGenerationContext;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("update ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" set ");	$r5 = r4.<org.hibernate.id.enhanced.TableGenerator: java.lang.String valueColumnName>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=?  where ");	$r8 = r4.<org.hibernate.id.enhanced.TableGenerator: java.lang.String valueColumnName>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r12 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=? and ");	$r11 = r4.<org.hibernate.id.enhanced.TableGenerator: java.lang.String segmentColumnName>;	$r13 = virtualinvoke $r12.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r11);	$r14 = virtualinvoke $r13.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("=?");	$r15 = virtualinvoke $r14.<java.lang.StringBuilder: java.lang.String toString()>();	return $r15
;block_num 1