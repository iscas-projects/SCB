(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2466 0)
(declare-sort var3920 0)
(declare-sort var2781 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun hashCode/-467973558 (String) Int)
(declare-const null-var2466 var2466)
(declare-const null-String String)
(declare-const null-var2781 var2781)
(declare-const var887 var2466) ; Statement: r3 := @this: jdk.jfr.internal.MetadataHandler 
(assert (not (= var887 null-var2466)))
(declare-const var686 String) ; Statement: r52 := @parameter0: java.lang.String 
(assert (not (= var686 null-String)))
(declare-const var557 String) ; Statement: r53 := @parameter1: java.lang.String 
(assert (not (= var557 null-String)))
(declare-const var1873 String) ; Statement: r0 := @parameter2: java.lang.String 
(assert (not (= var1873 null-String)))
(declare-const var2001 var2781) ; Statement: r1 := @parameter3: jdk.internal.org.xml.sax.Attributes 
(assert (not (= var2001 null-var2781)))
(define-const var2221 Int (- 1)) ; Statement: b1 = -1 
(assert true)
(define-const var201 Int (hashCode/-467973558 var1873)) ; Statement: $i0 = virtualinvoke r0.<java.lang.String: int hashCode()>() 
 ; Statement: lookupswitch($i0) {     case -1120873764: goto $z15 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("XmlContentType");     case -489791972: goto $z14 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("Relation");     case -281114671: goto $z13 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("XmlType");     case 2622298: goto $z12 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("Type");     case 67338874: goto $z11 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("Event");     case 67875034: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("Field");     default: goto tableswitch(b1) {     case 0: goto $r44 = new jdk.jfr.internal.MetadataHandler$XmlType;     case 1: goto $r27 = new jdk.jfr.internal.MetadataHandler$TypeElement;     case 2: goto $r27 = new jdk.jfr.internal.MetadataHandler$TypeElement;     case 3: goto $r9 = new jdk.jfr.internal.MetadataHandler$FieldElement;     case 4: goto r5 = interfaceinvoke r1.<jdk.internal.org.xml.sax.Attributes: java.lang.String getValue(java.lang.String)>("name");     case 5: goto r2 = interfaceinvoke r1.<jdk.internal.org.xml.sax.Attributes: java.lang.String getValue(java.lang.String)>("name");     default: goto return; }; } 
(assert (and (not (= var201 67875034)) (and (not (= var201 67338874)) (and (not (= var201 2622298)) (and (not (= var201 (- 281114671))) (and (not (= var201 (- 489791972))) (and (not (= var201 (- 1120873764))) true))))))) ; Intersect: Negate: Cond: $i0 == 67875034   and Intersect: Negate: Cond: $i0 == 67338874   and Intersect: Negate: Cond: $i0 == 2622298   and Intersect: Negate: Cond: $i0 == -281114671   and Intersect: Negate: Cond: $i0 == -489791972   and Intersect: Negate: Cond: $i0 == -1120873764   and Non Conditional      
 ; Statement: tableswitch(b1) {     case 0: goto $r44 = new jdk.jfr.internal.MetadataHandler$XmlType;     case 1: goto $r27 = new jdk.jfr.internal.MetadataHandler$TypeElement;     case 2: goto $r27 = new jdk.jfr.internal.MetadataHandler$TypeElement;     case 3: goto $r9 = new jdk.jfr.internal.MetadataHandler$FieldElement;     case 4: goto r5 = interfaceinvoke r1.<jdk.internal.org.xml.sax.Attributes: java.lang.String getValue(java.lang.String)>("name");     case 5: goto r2 = interfaceinvoke r1.<jdk.internal.org.xml.sax.Attributes: java.lang.String getValue(java.lang.String)>("name");     default: goto return; } 
(assert (and (not (= var2221 5)) (and (not (= var2221 4)) (and (not (= var2221 3)) (and (not (= var2221 2)) (and (not (= var2221 1)) (and (not (= var2221 0)) true))))))) ; Intersect: Negate: Cond: b1 == 5   and Intersect: Negate: Cond: b1 == 4   and Intersect: Negate: Cond: b1 == 3   and Intersect: Negate: Cond: b1 == 2   and Intersect: Negate: Cond: b1 == 1   and Intersect: Negate: Cond: b1 == 0   and Non Conditional      
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {hashCode/-467973558=([java.lang.String], int)}
; {var2466=jdk.jfr.internal.MetadataHandler, var887=r3, var686=r52, var3920=null_type, var557=r53, var1873=r0, var2781=jdk.internal.org.xml.sax.Attributes, var2001=r1, var2221=b1, var201=$i0}
; {jdk.jfr.internal.MetadataHandler=var2466, r3=var887, r52=var686, null_type=var3920, r53=var557, r0=var1873, jdk.internal.org.xml.sax.Attributes=var2781, r1=var2001, b1=var2221, $i0=var201}
;seq <java.lang.String: int hashCode()>
;cnt {"<java.lang.String: int hashCode()>": 1}
;stmts r3 := @this: jdk.jfr.internal.MetadataHandler;	r52 := @parameter0: java.lang.String;	r53 := @parameter1: java.lang.String;	r0 := @parameter2: java.lang.String;	r1 := @parameter3: jdk.internal.org.xml.sax.Attributes;	b1 = -1;	$i0 = virtualinvoke r0.<java.lang.String: int hashCode()>();	lookupswitch($i0) {     case -1120873764: goto $z15 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("XmlContentType");     case -489791972: goto $z14 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("Relation");     case -281114671: goto $z13 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("XmlType");     case 2622298: goto $z12 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("Type");     case 67338874: goto $z11 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("Event");     case 67875034: goto $z0 = virtualinvoke r0.<java.lang.String: boolean equals(java.lang.Object)>("Field");     default: goto tableswitch(b1) {     case 0: goto $r44 = new jdk.jfr.internal.MetadataHandler$XmlType;     case 1: goto $r27 = new jdk.jfr.internal.MetadataHandler$TypeElement;     case 2: goto $r27 = new jdk.jfr.internal.MetadataHandler$TypeElement;     case 3: goto $r9 = new jdk.jfr.internal.MetadataHandler$FieldElement;     case 4: goto r5 = interfaceinvoke r1.<jdk.internal.org.xml.sax.Attributes: java.lang.String getValue(java.lang.String)>("name");     case 5: goto r2 = interfaceinvoke r1.<jdk.internal.org.xml.sax.Attributes: java.lang.String getValue(java.lang.String)>("name");     default: goto return; }; };	tableswitch(b1) {     case 0: goto $r44 = new jdk.jfr.internal.MetadataHandler$XmlType;     case 1: goto $r27 = new jdk.jfr.internal.MetadataHandler$TypeElement;     case 2: goto $r27 = new jdk.jfr.internal.MetadataHandler$TypeElement;     case 3: goto $r9 = new jdk.jfr.internal.MetadataHandler$FieldElement;     case 4: goto r5 = interfaceinvoke r1.<jdk.internal.org.xml.sax.Attributes: java.lang.String getValue(java.lang.String)>("name");     case 5: goto r2 = interfaceinvoke r1.<jdk.internal.org.xml.sax.Attributes: java.lang.String getValue(java.lang.String)>("name");     default: goto return; };	return
;block_num 3