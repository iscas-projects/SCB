(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var957 0)
(declare-sort var876 0)
(declare-sort var2283 0)
(declare-sort var1841 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun columnMappingList/184342445 (var957) var876)
(declare-fun var876_isEmpty/-153543822 (var876) Bool)
(declare-fun var2283-init () var2283)
(declare-fun fkIdentifier/184342445 (var957) var1841)
(declare-fun <init>/-1446987291 (var2283 var1841 var876) void)
(declare-const null-var957 var957)
(declare-const var2302 var957) ; Statement: r0 := @this: org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl$ForeignKeyBuilderImpl 
(assert (not (= var2302 null-var957)))
(define-const var1671 var876 (columnMappingList/184342445 var2302)) ; Statement: $r1 = r0.<org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl$ForeignKeyBuilderImpl: java.util.List columnMappingList> 
(define-const var3847 Bool (var876_isEmpty/-153543822 var1671)) ; Statement: $z0 = interfaceinvoke $r1.<java.util.List: boolean isEmpty()>() 
 ; Statement: if $z0 == 0 goto $r15 = new org.hibernate.tool.schema.extract.internal.ForeignKeyInformationImpl 
(assert (= (ite var3847 1 0) 0)) ; Cond: $z0 == 0 
(define-const var573 var2283 var2283-init) ; Statement: $r15 = new org.hibernate.tool.schema.extract.internal.ForeignKeyInformationImpl 
(define-const var2025 var1841 (fkIdentifier/184342445 var2302)) ; Statement: $r4 = r0.<org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl$ForeignKeyBuilderImpl: org.hibernate.boot.model.naming.Identifier fkIdentifier> 
(define-const var3535 var876 (columnMappingList/184342445 var2302)) ; Statement: $r3 = r0.<org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl$ForeignKeyBuilderImpl: java.util.List columnMappingList> 
(assert true)
;(assert (<init>/-1446987291 var573 var2025 var3535)) ; Statement: specialinvoke $r15.<org.hibernate.tool.schema.extract.internal.ForeignKeyInformationImpl: void <init>(org.hibernate.boot.model.naming.Identifier,java.util.List)>($r4, $r3) 

(declare-const var573!1 var2283)
(declare-const var2025!1 var1841)
(declare-const var3535!1 var876)
 ; Statement: return $r15 
(check-sat)
(get-model)
(get-unsat-core)
; {columnMappingList/184342445=([org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl$ForeignKeyBuilderImpl], java.util.List), var876_isEmpty/-153543822=([java.util.List], boolean), var2283-init=([], org.hibernate.tool.schema.extract.internal.ForeignKeyInformationImpl), fkIdentifier/184342445=([org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl$ForeignKeyBuilderImpl], org.hibernate.boot.model.naming.Identifier), <init>/-1446987291=([org.hibernate.tool.schema.extract.internal.ForeignKeyInformationImpl, org.hibernate.boot.model.naming.Identifier, java.util.List], void)}
; {var957=org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl$ForeignKeyBuilderImpl, var2302=r0, var876=java.util.List, var1671=$r1, var3847=$z0, var2283=org.hibernate.tool.schema.extract.internal.ForeignKeyInformationImpl, var573=$r15, var1841=org.hibernate.boot.model.naming.Identifier, var2025=$r4, var3535=$r3}
; {org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl$ForeignKeyBuilderImpl=var957, r0=var2302, java.util.List=var876, $r1=var1671, $z0=var3847, org.hibernate.tool.schema.extract.internal.ForeignKeyInformationImpl=var2283, $r15=var573, org.hibernate.boot.model.naming.Identifier=var1841, $r4=var2025, $r3=var3535}
;seq 
;cnt {}
;stmts r0 := @this: org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl$ForeignKeyBuilderImpl;	$r1 = r0.<org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl$ForeignKeyBuilderImpl: java.util.List columnMappingList>;	$z0 = interfaceinvoke $r1.<java.util.List: boolean isEmpty()>();	if $z0 == 0 goto $r15 = new org.hibernate.tool.schema.extract.internal.ForeignKeyInformationImpl;	$r15 = new org.hibernate.tool.schema.extract.internal.ForeignKeyInformationImpl;	$r4 = r0.<org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl$ForeignKeyBuilderImpl: org.hibernate.boot.model.naming.Identifier fkIdentifier>;	$r3 = r0.<org.hibernate.tool.schema.extract.internal.AbstractInformationExtractorImpl$ForeignKeyBuilderImpl: java.util.List columnMappingList>;	specialinvoke $r15.<org.hibernate.tool.schema.extract.internal.ForeignKeyInformationImpl: void <init>(org.hibernate.boot.model.naming.Identifier,java.util.List)>($r4, $r3);	return $r15
;block_num 2