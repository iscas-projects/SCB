(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3030 0)
(declare-sort var1894 0)
(declare-sort var3105 0)
(declare-sort var3224 0)
(declare-sort var1631 0)
(declare-sort var1078 0)
(declare-sort var2448 0)
(declare-sort var3629 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getSqlTypeCode/-2051612395 (var3105 var3629) Int)
(declare-fun cast-from-var1631-to-var3629 (var1631) var3629)
(declare-fun var3224_getTypeCode/-410685307 (var3224) Int)
(declare-fun equivalentTypes/-145421708 (var2448 Int Int) Bool)
(declare-const null-var3030 var3030)
(declare-const null-var1894 var1894)
(declare-const null-var3105 var3105)
(declare-const null-var3224 var3224)
(declare-const null-var1631 var1631)
(declare-const null-var1078 var1078)
(declare-const null-var2448 var2448)
(declare-const var360 var3030) ; Statement: r26 := @this: org.hibernate.tool.schema.internal.AbstractSchemaValidator 
(assert (not (= var360 null-var3030)))
(declare-const var1910 var1894) ; Statement: r7 := @parameter0: org.hibernate.mapping.Table 
(assert (not (= var1910 null-var1894)))
(declare-const var217 var3105) ; Statement: r1 := @parameter1: org.hibernate.mapping.Column 
(assert (not (= var217 null-var3105)))
(declare-const var2174 var3224) ; Statement: r3 := @parameter2: org.hibernate.tool.schema.extract.spi.ColumnInformation 
(assert (not (= var2174 null-var3224)))
(declare-const var2624 var1631) ; Statement: r2 := @parameter3: org.hibernate.boot.Metadata 
(assert (not (= var2624 null-var1631)))
(declare-const var2031 var1078) ; Statement: r27 := @parameter4: org.hibernate.tool.schema.spi.ExecutionOptions 
(assert (not (= var2031 null-var1078)))
(declare-const var3926 var2448) ; Statement: r0 := @parameter5: org.hibernate.dialect.Dialect 
(assert (not (= var3926 null-var2448)))
(assert true)
(define-const var2131 Int (getSqlTypeCode/-2051612395 var217 (cast-from-var1631-to-var3629 var2624))) ; Statement: $i1 = virtualinvoke r1.<org.hibernate.mapping.Column: int getSqlTypeCode(org.hibernate.engine.spi.Mapping)>(r2) 
(define-const var1743 Int (var3224_getTypeCode/-410685307 var2174)) ; Statement: $i0 = interfaceinvoke r3.<org.hibernate.tool.schema.extract.spi.ColumnInformation: int getTypeCode()>() 
(assert true)
(define-const var2157 Bool (equivalentTypes/-145421708 var3926 var2131 var1743)) ; Statement: $z0 = virtualinvoke r0.<org.hibernate.dialect.Dialect: boolean equivalentTypes(int,int)>($i1, $i0) 
 ; Statement: if $z0 != 0 goto $z2 = 1 
(assert (not (= (ite var2157 1 0) 0))) ; Cond: $z0 != 0 
(define-const var2502 Bool (ite (= 1 1) true false)) ; Statement: $z2 = 1 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if $z2 != 0 goto return 
(assert (not (= (ite var2502 1 0) 0))) ; Cond: $z2 != 0 
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getSqlTypeCode/-2051612395=([org.hibernate.mapping.Column, org.hibernate.engine.spi.Mapping], int), cast-from-var1631-to-var3629=([org.hibernate.boot.Metadata], org.hibernate.engine.spi.Mapping), var3224_getTypeCode/-410685307=([org.hibernate.tool.schema.extract.spi.ColumnInformation], int), equivalentTypes/-145421708=([org.hibernate.dialect.Dialect, int, int], boolean)}
; {var3030=org.hibernate.tool.schema.internal.AbstractSchemaValidator, var360=r26, var1894=org.hibernate.mapping.Table, var1910=r7, var3105=org.hibernate.mapping.Column, var217=r1, var3224=org.hibernate.tool.schema.extract.spi.ColumnInformation, var2174=r3, var1631=org.hibernate.boot.Metadata, var2624=r2, var1078=org.hibernate.tool.schema.spi.ExecutionOptions, var2031=r27, var2448=org.hibernate.dialect.Dialect, var3926=r0, var3629=org.hibernate.engine.spi.Mapping, var2131=$i1, var1743=$i0, var2157=$z0, var2502=$z2}
; {org.hibernate.tool.schema.internal.AbstractSchemaValidator=var3030, r26=var360, org.hibernate.mapping.Table=var1894, r7=var1910, org.hibernate.mapping.Column=var3105, r1=var217, org.hibernate.tool.schema.extract.spi.ColumnInformation=var3224, r3=var2174, org.hibernate.boot.Metadata=var1631, r2=var2624, org.hibernate.tool.schema.spi.ExecutionOptions=var1078, r27=var2031, org.hibernate.dialect.Dialect=var2448, r0=var3926, org.hibernate.engine.spi.Mapping=var3629, $i1=var2131, $i0=var1743, $z0=var2157, $z2=var2502}
;seq 
;cnt {}
;stmts r26 := @this: org.hibernate.tool.schema.internal.AbstractSchemaValidator;	r7 := @parameter0: org.hibernate.mapping.Table;	r1 := @parameter1: org.hibernate.mapping.Column;	r3 := @parameter2: org.hibernate.tool.schema.extract.spi.ColumnInformation;	r2 := @parameter3: org.hibernate.boot.Metadata;	r27 := @parameter4: org.hibernate.tool.schema.spi.ExecutionOptions;	r0 := @parameter5: org.hibernate.dialect.Dialect;	$i1 = virtualinvoke r1.<org.hibernate.mapping.Column: int getSqlTypeCode(org.hibernate.engine.spi.Mapping)>(r2);	$i0 = interfaceinvoke r3.<org.hibernate.tool.schema.extract.spi.ColumnInformation: int getTypeCode()>();	$z0 = virtualinvoke r0.<org.hibernate.dialect.Dialect: boolean equivalentTypes(int,int)>($i1, $i0);	if $z0 != 0 goto $z2 = 1;	$z2 = 1;	goto [?= (branch)];	if $z2 != 0 goto return;	return
;block_num 4