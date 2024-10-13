(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2118 0)
(declare-sort var3585 0)
(declare-sort var3192 0)
(declare-sort var957 0)
(declare-sort var1536 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun columnList/302987640 (var2118) var3585)
(declare-fun var3585_isEmpty/-153543822 (var3585) Bool)
(declare-fun var3192-init () var3192)
(declare-fun indexIdentifier/302987640 (var2118) var957)
(declare-fun var1536_unmodifiableList/-1798737475 (var3585) var3585)
(declare-fun <init>/320675094 (var3192 var957 var3585) void)
(declare-const null-var2118 var2118)
(declare-const var406 var2118) ; Statement: r0 := @this: org.hibernate.tool.schema.extract.internal.IndexInformationImpl$Builder 
(assert (not (= var406 null-var2118)))
(define-const var945 var3585 (columnList/302987640 var406)) ; Statement: $r1 = r0.<org.hibernate.tool.schema.extract.internal.IndexInformationImpl$Builder: java.util.List columnList> 
(define-const var944 Bool (var3585_isEmpty/-153543822 var945)) ; Statement: $z0 = interfaceinvoke $r1.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r16 = new org.hibernate.tool.schema.extract.internal.IndexInformationImpl 
(assert (= (ite var944 1 0) 0)) ; Cond: $z0 == 0 
(define-const var3527 var3192 var3192-init) ; Statement: $r16 = new org.hibernate.tool.schema.extract.internal.IndexInformationImpl 
(define-const var2286 var957 (indexIdentifier/302987640 var406)) ; Statement: $r4 = r0.<org.hibernate.tool.schema.extract.internal.IndexInformationImpl$Builder: org.hibernate.boot.model.naming.Identifier indexIdentifier> 
(define-const var3511 var3585 (columnList/302987640 var406)) ; Statement: $r3 = r0.<org.hibernate.tool.schema.extract.internal.IndexInformationImpl$Builder: java.util.List columnList> 
(define-const var1365 var3585 (var1536_unmodifiableList/-1798737475 var3511)) ; Statement: $r5 = staticinvoke <java.util.Collections: java.util.List unmodifiableList(java.util.List)>($r3) 
(assert true)
;(assert (<init>/320675094 var3527 var2286 var1365)) ; Statement: specialinvoke $r16.<org.hibernate.tool.schema.extract.internal.IndexInformationImpl: void <init>(org.hibernate.boot.model.naming.Identifier,java.util.List)>($r4, $r5) 

(declare-const var3527!1 var3192)
(declare-const var2286!1 var957)
(declare-const var1365!1 var3585)
 ; Statement: return $r16 
(check-sat)
(get-model)
(get-unsat-core)
; {columnList/302987640=([org.hibernate.tool.schema.extract.internal.IndexInformationImpl$Builder], java.util.List), var3585_isEmpty/-153543822=([java.util.List], boolean), var3192-init=([], org.hibernate.tool.schema.extract.internal.IndexInformationImpl), indexIdentifier/302987640=([org.hibernate.tool.schema.extract.internal.IndexInformationImpl$Builder], org.hibernate.boot.model.naming.Identifier), var1536_unmodifiableList/-1798737475=([java.util.List], java.util.List), <init>/320675094=([org.hibernate.tool.schema.extract.internal.IndexInformationImpl, org.hibernate.boot.model.naming.Identifier, java.util.List], void)}
; {var2118=org.hibernate.tool.schema.extract.internal.IndexInformationImpl$Builder, var406=r0, var3585=java.util.List, var945=$r1, var944=$z0, var3192=org.hibernate.tool.schema.extract.internal.IndexInformationImpl, var3527=$r16, var957=org.hibernate.boot.model.naming.Identifier, var2286=$r4, var3511=$r3, var1536=java.util.Collections, var1365=$r5}
; {org.hibernate.tool.schema.extract.internal.IndexInformationImpl$Builder=var2118, r0=var406, java.util.List=var3585, $r1=var945, $z0=var944, org.hibernate.tool.schema.extract.internal.IndexInformationImpl=var3192, $r16=var3527, org.hibernate.boot.model.naming.Identifier=var957, $r4=var2286, $r3=var3511, java.util.Collections=var1536, $r5=var1365}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.tool.schema.extract.internal.IndexInformationImpl$Builder;	$r1 = r0.<org.hibernate.tool.schema.extract.internal.IndexInformationImpl$Builder: java.util.List columnList>;	$z0 = interfaceinvoke $r1.<java.util.List: boolean isEmpty()>();	if $z0 == 0 goto $r16 = new org.hibernate.tool.schema.extract.internal.IndexInformationImpl;	$r16 = new org.hibernate.tool.schema.extract.internal.IndexInformationImpl;	$r4 = r0.<org.hibernate.tool.schema.extract.internal.IndexInformationImpl$Builder: org.hibernate.boot.model.naming.Identifier indexIdentifier>;	$r3 = r0.<org.hibernate.tool.schema.extract.internal.IndexInformationImpl$Builder: java.util.List columnList>;	$r5 = staticinvoke <java.util.Collections: java.util.List unmodifiableList(java.util.List)>($r3);	specialinvoke $r16.<org.hibernate.tool.schema.extract.internal.IndexInformationImpl: void <init>(org.hibernate.boot.model.naming.Identifier,java.util.List)>($r4, $r5);	return $r16
;block_num 2