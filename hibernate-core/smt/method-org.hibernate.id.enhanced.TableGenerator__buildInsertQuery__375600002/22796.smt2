(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1729 0)
(declare-sort var2192 0)
(declare-sort var145 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun segmentColumnName/-1676129200 (var1729) String)
(declare-fun valueColumnName/-1676129200 (var1729) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1729 var1729)
(declare-const null-String String)
(declare-const null-var145 var145)
(declare-const var3991 var1729) ; Statement: r4 := @this: org.hibernate.id.enhanced.TableGenerator 
(assert (not (= var3991 null-var1729)))
(declare-const var3512 String) ; Statement: r1 := @parameter0: java.lang.String 
(assert (not (= var3512 null-String)))
(declare-const var3742 var145) ; Statement: r13 := @parameter1: org.hibernate.boot.model.relational.SqlStringGenerationContext 
(assert (not (= var3742 null-var145)))
(define-const var2650 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var2650)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var2650!1 String)
(assert (= var2650!1 ""))
(assert true)
(define-const var596 String (append/672562846 var2650!1 "insert into ")) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("insert into ") 
(declare-const var2650!2 String)
(assert (= var2650!2 (str.++ var2650!1 "insert into ")))
(assert true)
(define-const var3776 String (append/672562846 var596 var3512)) ; Statement: $r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1) 
(declare-const var596!1 String)
(assert (= var596!1 (str.++ var596 var3512)))
(assert true)
(define-const var2966 String (append/672562846 var3776 " (")) ; Statement: $r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (") 
(declare-const var3776!1 String)
(assert (= var3776!1 (str.++ var3776 " (")))
(define-const var2399 String (segmentColumnName/-1676129200 var3991)) ; Statement: $r5 = r4.<org.hibernate.id.enhanced.TableGenerator: java.lang.String segmentColumnName> 
(assert true)
(define-const var1624 String (append/672562846 var2966 var2399)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var2966!1 String)
(assert (= var2966!1 (str.++ var2966 var2399)))
(assert true)
(define-const var1562 String (append/672562846 var1624 ", ")) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ") 
(declare-const var1624!1 String)
(assert (= var1624!1 (str.++ var1624 ", ")))
(define-const var2144 String (valueColumnName/-1676129200 var3991)) ; Statement: $r8 = r4.<org.hibernate.id.enhanced.TableGenerator: java.lang.String valueColumnName> 
(assert true)
(define-const var368 String (append/672562846 var1562 var2144)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8) 
(declare-const var1562!1 String)
(assert (= var1562!1 (str.++ var1562 var2144)))
(assert true)
(define-const var247 String (append/672562846 var368 ")  values (?,?)")) ; Statement: $r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")  values (?,?)") 
(declare-const var368!1 String)
(assert (= var368!1 (str.++ var368 ")  values (?,?)")))
(assert true)
(define-const var1500 String (toString/-2075883882 var247)) ; Statement: $r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r12 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), segmentColumnName/-1676129200=([org.hibernate.id.enhanced.TableGenerator], java.lang.String), valueColumnName/-1676129200=([org.hibernate.id.enhanced.TableGenerator], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1729=org.hibernate.id.enhanced.TableGenerator, var3991=r4, var3512=r1, var2192=null_type, var145=org.hibernate.boot.model.relational.SqlStringGenerationContext, var3742=r13, var2650=$r0, var596=$r2, var3776=$r3, var2966=$r6, var2399=$r5, var1624=$r7, var1562=$r9, var2144=$r8, var368=$r10, var247=$r11, var1500=$r12}
; {org.hibernate.id.enhanced.TableGenerator=var1729, r4=var3991, r1=var3512, null_type=var2192, org.hibernate.boot.model.relational.SqlStringGenerationContext=var145, r13=var3742, $r0=var2650, $r2=var596, $r3=var3776, $r6=var2966, $r5=var2399, $r7=var1624, $r9=var1562, $r8=var2144, $r10=var368, $r11=var247, $r12=var1500}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 7,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: org.hibernate.id.enhanced.TableGenerator;	r1 := @parameter0: java.lang.String;	r13 := @parameter1: org.hibernate.boot.model.relational.SqlStringGenerationContext;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("insert into ");	$r3 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r1);	$r6 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" (");	$r5 = r4.<org.hibernate.id.enhanced.TableGenerator: java.lang.String segmentColumnName>;	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(", ");	$r8 = r4.<org.hibernate.id.enhanced.TableGenerator: java.lang.String valueColumnName>;	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r8);	$r11 = virtualinvoke $r10.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")  values (?,?)");	$r12 = virtualinvoke $r11.<java.lang.StringBuilder: java.lang.String toString()>();	return $r12
;block_num 1