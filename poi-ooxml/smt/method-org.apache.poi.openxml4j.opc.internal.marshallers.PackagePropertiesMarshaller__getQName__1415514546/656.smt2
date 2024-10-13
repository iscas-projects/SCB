(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var460 0)
(declare-sort var3733 0)
(declare-sort var2463 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getPrefix/1099482225 (var2463) String)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var460 var460)
(declare-const null-String String)
(declare-const null-var2463 var2463)
(declare-const var3038 var460) ; Statement: r8 := @this: org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller 
(assert (not (= var3038 null-var460)))
(declare-const var3960 String) ; Statement: r5 := @parameter0: java.lang.String 
(assert (not (= var3960 null-String)))
(declare-const var2997 var2463) ; Statement: r0 := @parameter1: org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl 
(assert (not (= var2997 null-var2463)))
(assert true)
(define-const var2474 String (getPrefix/1099482225 var2997)) ; Statement: $r1 = virtualinvoke r0.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl: java.lang.String getPrefix()>() 
(assert true)
(define-const var842 Bool (isEmpty/-1285796103 var2474)) ; Statement: $z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r2 = new java.lang.StringBuilder 
(assert (= (ite var842 1 0) 0)) ; Cond: $z0 == 0 
(define-const var1960 String String-init) ; Statement: $r2 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1960)) ; Statement: specialinvoke $r2.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1960!1 String)
(assert (= var1960!1 ""))
(assert true)
(define-const var98 String (getPrefix/1099482225 var2997)) ; Statement: $r3 = virtualinvoke r0.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl: java.lang.String getPrefix()>() 
(assert true)
(define-const var15 String (append/672562846 var1960!1 var98)) ; Statement: $r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1960!2 String)
(assert (= var1960!2 (str.++ var1960!1 var98)))
(assert true)
(define-const var3920 String (append/-1166366385 var15 58)) ; Statement: $r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58) 
(declare-const var15!1 String)
(assert (str.prefixof var15 var15!1))
(assert true)
(define-const var336 String (append/672562846 var3920 var3960)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5) 
(declare-const var3920!1 String)
(assert (= var3920!1 (str.++ var3920 var3960)))
(assert true)
(define-const var2944 String (toString/-2075883882 var336)) ; Statement: $r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true) ; Non Conditional
 ; Statement: return $r9 
(check-sat)
(get-model)
(get-unsat-core)
; {getPrefix/1099482225=([org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl], java.lang.String), isEmpty/-1285796103=([java.lang.String], boolean), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var460=org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller, var3038=r8, var3960=r5, var3733=null_type, var2463=org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl, var2997=r0, var2474=$r1, var842=$z0, var1960=$r2, var98=$r3, var15=$r4, var3920=$r6, var336=$r7, var2944=$r9}
; {org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller=var460, r8=var3038, r5=var3960, null_type=var3733, org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl=var2463, r0=var2997, $r1=var2474, $z0=var842, $r2=var1960, $r3=var98, $r4=var15, $r6=var3920, $r7=var336, $r9=var2944}
;seq <java.lang.String: boolean isEmpty()>;	<java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1,"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r8 := @this: org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller;	r5 := @parameter0: java.lang.String;	r0 := @parameter1: org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl;	$r1 = virtualinvoke r0.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl: java.lang.String getPrefix()>();	$z0 = virtualinvoke $r1.<java.lang.String: boolean isEmpty()>();	if $z0 == 0 goto $r2 = new java.lang.StringBuilder;	$r2 = new java.lang.StringBuilder;	specialinvoke $r2.<java.lang.StringBuilder: void <init>()>();	$r3 = virtualinvoke r0.<org.apache.poi.openxml4j.opc.internal.marshallers.PackagePropertiesMarshaller$NamespaceImpl: java.lang.String getPrefix()>();	$r4 = virtualinvoke $r2.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	$r6 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(58);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r5);	$r9 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.String toString()>();	return $r9
;block_num 3