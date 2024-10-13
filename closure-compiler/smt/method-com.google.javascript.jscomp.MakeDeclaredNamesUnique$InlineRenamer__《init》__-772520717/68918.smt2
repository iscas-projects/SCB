(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2734 0)
(declare-sort var1419 0)
(declare-sort var3885 0)
(declare-sort var1174 0)
(declare-sort var815 0)
(declare-sort var3253 0)
(declare-sort var3946 0)
(declare-sort var3157 0)
(declare-sort var81 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3253) void)
(declare-fun cast-from-var2734-to-var3253 (var2734) var3253)
(declare-fun var3946-init () var3946)
(declare-fun <init>/-1461814690 (var3946) void)
(declare-fun cast-from-var3946-to-var3157 (var3946) var3157)
(declare-fun declarations/400687851 (var2734) var3157)
(declare-fun convention/400687851 (var2734) var1419)
(declare-fun uniqueIdSupplier/400687851 (var2734) var3885)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var81_checkArgument/1735511034 (Bool) void)
(declare-fun idPrefix/400687851 (var2734) String)
(declare-fun removeConstness/400687851 (var2734) Bool)
(declare-fun var815_getHoistRenamer/-1230917076 (var815) var815)
(declare-fun hoistRenamer/400687851 (var2734) var815)
(declare-const null-var2734 var2734)
(declare-const null-var1419 var1419)
(declare-const null-var3885 var3885)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var815 var815)
(declare-const var1954 var2734) ; Statement: r0 := @this: com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer 
(assert (not (= var1954 null-var2734)))
(declare-const var3217 var1419) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.CodingConvention 
(assert (not (= var3217 null-var1419)))
(declare-const var878 var3885) ; Statement: r3 := @parameter1: java.util.function.Supplier 
(assert (not (= var878 null-var3885)))
(declare-const var3804 String) ; Statement: r4 := @parameter2: java.lang.String 
(assert (not (= var3804 null-String)))
(declare-const var1569 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var1569 null-Bool)))
(declare-const var2451 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var2451 null-Bool)))
(declare-const var325 var815) ; Statement: r5 := @parameter5: com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer 
(assert (not (= var325 null-var815)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2734-to-var3253 var1954))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1954!1 var2734)
(define-const var3567 var3946 var3946-init) ; Statement: $r1 = new java.util.LinkedHashMap 
(assert true)
;(assert (<init>/-1461814690 var3567)) ; Statement: specialinvoke $r1.<java.util.LinkedHashMap: void <init>()>() 

(declare-const var3567!1 var3946)
(declare-const var1954!2 var2734)
(assert (not (= var1954!2 null-var2734)))
(assert (= (declarations/400687851 var1954!2) (cast-from-var3946-to-var3157 var3567!1))) ; Statement: r0.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer: java.util.Map declarations> = $r1 
(declare-const var1954!3 var2734)
(assert (not (= var1954!3 null-var2734)))
(assert (= (convention/400687851 var1954!3) var3217)) ; Statement: r0.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer: com.google.javascript.jscomp.CodingConvention convention> = r2 
(declare-const var1954!4 var2734)
(assert (not (= var1954!4 null-var2734)))
(assert (= (uniqueIdSupplier/400687851 var1954!4) var878)) ; Statement: r0.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer: java.util.function.Supplier uniqueIdSupplier> = r3 
(assert true)
(define-const var3722 Bool (isEmpty/-1285796103 var3804)) ; Statement: $z0 = virtualinvoke r4.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z3 = 0 
(assert (not (= (ite var3722 1 0) 0))) ; Cond: $z0 != 0 
(define-const var1076 Bool (ite (= 1 0) true false)) ; Statement: $z3 = 0 
(assert true) ; Non Conditional
;(assert (var81_checkArgument/1735511034 var1076)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z3) 

(declare-const var1076!1 Bool)
(declare-const var1954!5 var2734)
(assert (not (= var1954!5 null-var2734)))
(assert (= (idPrefix/400687851 var1954!5) var3804)) ; Statement: r0.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer: java.lang.String idPrefix> = r4 
(declare-const var1954!6 var2734)
(assert (not (= var1954!6 null-var2734)))
(assert (= (removeConstness/400687851 var1954!6) var1569)) ; Statement: r0.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer: boolean removeConstness> = z1 
 ; Statement: if z2 == 0 goto $r6 = interfaceinvoke r5.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer: com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer getHoistRenamer()>() 
(assert (= (ite var2451 1 0) 0)) ; Cond: z2 == 0 
(define-const var3242 var815 (var815_getHoistRenamer/-1230917076 var325)) ; Statement: $r6 = interfaceinvoke r5.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer: com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer getHoistRenamer()>() 
(declare-const var1954!7 var2734)
(assert (not (= var1954!7 null-var2734)))
(assert (= (hoistRenamer/400687851 var1954!7) var3242)) ; Statement: r0.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer: com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer hoistRenamer> = $r6 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2734-to-var3253=([com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer], java.lang.Object), var3946-init=([], java.util.LinkedHashMap), <init>/-1461814690=([java.util.LinkedHashMap], void), cast-from-var3946-to-var3157=([java.util.LinkedHashMap], java.util.Map), declarations/400687851=([com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer], java.util.Map), convention/400687851=([com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer], com.google.javascript.jscomp.CodingConvention), uniqueIdSupplier/400687851=([com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer], java.util.function.Supplier), isEmpty/-1285796103=([java.lang.String], boolean), var81_checkArgument/1735511034=([boolean], void), idPrefix/400687851=([com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer], java.lang.String), removeConstness/400687851=([com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer], boolean), var815_getHoistRenamer/-1230917076=([com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer], com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer), hoistRenamer/400687851=([com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer], com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer)}
; {var2734=com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer, var1954=r0, var1419=com.google.javascript.jscomp.CodingConvention, var3217=r2, var3885=java.util.function.Supplier, var878=r3, var3804=r4, var1174=null_type, var1569=z1, var2451=z2, var815=com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer, var325=r5, var3253=java.lang.Object, var3946=java.util.LinkedHashMap, var3567=$r1, var3157=java.util.Map, var3722=$z0, var1076=$z3, var81=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3242=$r6}
; {com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer=var2734, r0=var1954, com.google.javascript.jscomp.CodingConvention=var1419, r2=var3217, java.util.function.Supplier=var3885, r3=var878, r4=var3804, null_type=var1174, z1=var1569, z2=var2451, com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer=var815, r5=var325, java.lang.Object=var3253, java.util.LinkedHashMap=var3946, $r1=var3567, java.util.Map=var3157, $z0=var3722, $z3=var1076, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var81, $r6=var3242}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer;	r2 := @parameter0: com.google.javascript.jscomp.CodingConvention;	r3 := @parameter1: java.util.function.Supplier;	r4 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	r5 := @parameter5: com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.util.LinkedHashMap;	specialinvoke $r1.<java.util.LinkedHashMap: void <init>()>();	r0.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer: java.util.Map declarations> = $r1;	r0.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer: com.google.javascript.jscomp.CodingConvention convention> = r2;	r0.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer: java.util.function.Supplier uniqueIdSupplier> = r3;	$z0 = virtualinvoke r4.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $z3 = 0;	$z3 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z3);	r0.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer: java.lang.String idPrefix> = r4;	r0.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer: boolean removeConstness> = z1;	if z2 == 0 goto $r6 = interfaceinvoke r5.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer: com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer getHoistRenamer()>();	$r6 = interfaceinvoke r5.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer: com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer getHoistRenamer()>();	r0.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer: com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer hoistRenamer> = $r6;	return
;block_num 5