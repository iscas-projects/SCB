(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var636 0)
(declare-sort var3740 0)
(declare-sort var2810 0)
(declare-sort var149 0)
(declare-sort var1043 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun newInstance/532723879 (var2810) var1043)
(declare-fun cast-from-var1043-to-var149 (var1043) var149)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var149_setObjectReference/1891790024 (var149 String) void)
(declare-fun var149_setMimeType/-1400608286 (var149 String) void)
(declare-fun var636_add/328494887 (var636 var1043) Bool)
(declare-fun cast-from-var149-to-var1043 (var149) var1043)
(declare-const null-var636 var636)
(declare-const null-String String)
(declare-const var149-Factory var2810)
(declare-const var510 var636) ; Statement: r9 := @parameter0: java.util.List 
(assert (not (= var510 null-var636)))
(declare-const var3068 String) ; Statement: r4 := @parameter1: java.lang.String 
(assert (not (= var3068 null-String)))
(declare-const var2577 String) ; Statement: r8 := @parameter2: java.lang.String 
(assert (not (= var2577 null-String)))
(define-const var2687 var2810 var149-Factory) ; Statement: $r0 = <org.etsi.uri.x01903.v13.DataObjectFormatType: org.apache.xmlbeans.impl.schema.DocumentFactory Factory> 
(assert true)
(define-const var2691 var1043 (newInstance/532723879 var2687)) ; Statement: $r1 = virtualinvoke $r0.<org.apache.xmlbeans.impl.schema.DocumentFactory: java.lang.Object newInstance()>() 
(define-const var1720 var149 (cast-from-var1043-to-var149 var2691)) ; Statement: r2 = (org.etsi.uri.x01903.v13.DataObjectFormatType) $r1 
(define-const var3224 String String-init) ; Statement: $r3 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3224)) ; Statement: specialinvoke $r3.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3224!1 String)
(assert (= var3224!1 ""))
(assert true)
(define-const var1896 String (append/672562846 var3224!1 "#")) ; Statement: $r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#") 
(declare-const var3224!2 String)
(assert (= var3224!2 (str.++ var3224!1 "#")))
(assert true)
(define-const var3515 String (append/672562846 var1896 var3068)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4) 
(declare-const var1896!1 String)
(assert (= var1896!1 (str.++ var1896 var3068)))
(assert true)
(define-const var1004 String (toString/-2075883882 var3515)) ; Statement: $r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>() 
;(assert (var149_setObjectReference/1891790024 var1720 var1004)) ; Statement: interfaceinvoke r2.<org.etsi.uri.x01903.v13.DataObjectFormatType: void setObjectReference(java.lang.String)>($r7) 

(declare-const var1720!1 var149)
(declare-const var1004!1 String)
;(assert (var149_setMimeType/-1400608286 var1720!1 var2577)) ; Statement: interfaceinvoke r2.<org.etsi.uri.x01903.v13.DataObjectFormatType: void setMimeType(java.lang.String)>(r8) 

(declare-const var1720!2 var149)
(declare-const var2577!1 String)
;(assert (var636_add/328494887 var510 (cast-from-var149-to-var1043 var1720!2))) ; Statement: interfaceinvoke r9.<java.util.List: boolean add(java.lang.Object)>(r2) 

(declare-const var510!1 var636)
(declare-const var1720!3 var149)
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {newInstance/532723879=([org.apache.xmlbeans.impl.schema.DocumentFactory], java.lang.Object), cast-from-var1043-to-var149=([java.lang.Object], org.etsi.uri.x01903.v13.DataObjectFormatType), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var149_setObjectReference/1891790024=([org.etsi.uri.x01903.v13.DataObjectFormatType, java.lang.String], void), var149_setMimeType/-1400608286=([org.etsi.uri.x01903.v13.DataObjectFormatType, java.lang.String], void), var636_add/328494887=([java.util.List, java.lang.Object], boolean), cast-from-var149-to-var1043=([org.etsi.uri.x01903.v13.DataObjectFormatType], java.lang.Object)}
; {var636=java.util.List, var510=r9, var3068=r4, var3740=null_type, var2577=r8, var2810=org.apache.xmlbeans.impl.schema.DocumentFactory, var149=org.etsi.uri.x01903.v13.DataObjectFormatType, var2687=$r0, var1043=java.lang.Object, var2691=$r1, var1720=r2, var3224=$r3, var1896=$r5, var3515=$r6, var1004=$r7}
; {java.util.List=var636, r9=var510, r4=var3068, null_type=var3740, r8=var2577, org.apache.xmlbeans.impl.schema.DocumentFactory=var2810, org.etsi.uri.x01903.v13.DataObjectFormatType=var149, $r0=var2687, java.lang.Object=var1043, $r1=var2691, r2=var1720, $r3=var3224, $r5=var1896, $r6=var3515, $r7=var1004}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r9 := @parameter0: java.util.List;	r4 := @parameter1: java.lang.String;	r8 := @parameter2: java.lang.String;	$r0 = <org.etsi.uri.x01903.v13.DataObjectFormatType: org.apache.xmlbeans.impl.schema.DocumentFactory Factory>;	$r1 = virtualinvoke $r0.<org.apache.xmlbeans.impl.schema.DocumentFactory: java.lang.Object newInstance()>();	r2 = (org.etsi.uri.x01903.v13.DataObjectFormatType) $r1;	$r3 = new java.lang.StringBuilder;	specialinvoke $r3.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r3.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("#");	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(r4);	$r7 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.String toString()>();	interfaceinvoke r2.<org.etsi.uri.x01903.v13.DataObjectFormatType: void setObjectReference(java.lang.String)>($r7);	interfaceinvoke r2.<org.etsi.uri.x01903.v13.DataObjectFormatType: void setMimeType(java.lang.String)>(r8);	interfaceinvoke r9.<java.util.List: boolean add(java.lang.Object)>(r2);	return
;block_num 1