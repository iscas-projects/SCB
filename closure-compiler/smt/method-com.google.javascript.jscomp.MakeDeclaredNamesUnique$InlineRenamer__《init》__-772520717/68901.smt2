(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3723 0)
(declare-sort var1987 0)
(declare-sort var276 0)
(declare-sort var2525 0)
(declare-sort var2659 0)
(declare-sort var3125 0)
(declare-sort var1492 0)
(declare-sort var131 0)
(declare-sort var647 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3125) void)
(declare-fun cast-from-var3723-to-var3125 (var3723) var3125)
(declare-fun var1492-init () var1492)
(declare-fun <init>/-1461814690 (var1492) void)
(declare-fun cast-from-var1492-to-var131 (var1492) var131)
(declare-fun declarations/400687851 (var3723) var131)
(declare-fun convention/400687851 (var3723) var1987)
(declare-fun uniqueIdSupplier/400687851 (var3723) var276)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var647_checkArgument/1735511034 (Bool) void)
(declare-fun idPrefix/400687851 (var3723) String)
(declare-fun removeConstness/400687851 (var3723) Bool)
(declare-fun var2659_getHoistRenamer/-1230917076 (var2659) var2659)
(declare-fun hoistRenamer/400687851 (var3723) var2659)
(declare-const null-var3723 var3723)
(declare-const null-var1987 var1987)
(declare-const null-var276 var276)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var2659 var2659)
(declare-const var453 var3723) ; Statement: r0 := @this: com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer 
(assert (not (= var453 null-var3723)))
(declare-const var2600 var1987) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.CodingConvention 
(assert (not (= var2600 null-var1987)))
(declare-const var3431 var276) ; Statement: r3 := @parameter1: java.util.function.Supplier 
(assert (not (= var3431 null-var276)))
(declare-const var1608 String) ; Statement: r4 := @parameter2: java.lang.String 
(assert (not (= var1608 null-String)))
(declare-const var3519 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var3519 null-Bool)))
(declare-const var3373 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var3373 null-Bool)))
(declare-const var192 var2659) ; Statement: r5 := @parameter5: com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer 
(assert (not (= var192 null-var2659)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3723-to-var3125 var453))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var453!1 var3723)
(define-const var899 var1492 var1492-init) ; Statement: $r1 = new java.util.LinkedHashMap 
(assert true)
;(assert (<init>/-1461814690 var899)) ; Statement: specialinvoke $r1.<java.util.LinkedHashMap: void <init>()>() 

(declare-const var899!1 var1492)
(declare-const var453!2 var3723)
(assert (not (= var453!2 null-var3723)))
(assert (= (declarations/400687851 var453!2) (cast-from-var1492-to-var131 var899!1))) ; Statement: r0.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer: java.util.Map declarations> = $r1 
(declare-const var453!3 var3723)
(assert (not (= var453!3 null-var3723)))
(assert (= (convention/400687851 var453!3) var2600)) ; Statement: r0.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer: com.google.javascript.jscomp.CodingConvention convention> = r2 
(declare-const var453!4 var3723)
(assert (not (= var453!4 null-var3723)))
(assert (= (uniqueIdSupplier/400687851 var453!4) var3431)) ; Statement: r0.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer: java.util.function.Supplier uniqueIdSupplier> = r3 
(assert true)
(define-const var2551 Bool (isEmpty/-1285796103 var1608)) ; Statement: $z0 = virtualinvoke r4.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z3 = 0 
(assert (not (not (= (ite var2551 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var2205 Bool (ite (= 1 1) true false)) ; Statement: $z3 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z3)] 
(assert true) ; Non Conditional
;(assert (var647_checkArgument/1735511034 var2205)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z3) 

(declare-const var2205!1 Bool)
(declare-const var453!5 var3723)
(assert (not (= var453!5 null-var3723)))
(assert (= (idPrefix/400687851 var453!5) var1608)) ; Statement: r0.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer: java.lang.String idPrefix> = r4 
(declare-const var453!6 var3723)
(assert (not (= var453!6 null-var3723)))
(assert (= (removeConstness/400687851 var453!6) var3519)) ; Statement: r0.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer: boolean removeConstness> = z1 
 ; Statement: if z2 == 0 goto $r6 = interfaceinvoke r5.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer: com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer getHoistRenamer()>() 
(assert (= (ite var3373 1 0) 0)) ; Cond: z2 == 0 
(define-const var3151 var2659 (var2659_getHoistRenamer/-1230917076 var192)) ; Statement: $r6 = interfaceinvoke r5.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer: com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer getHoistRenamer()>() 
(declare-const var453!7 var3723)
(assert (not (= var453!7 null-var3723)))
(assert (= (hoistRenamer/400687851 var453!7) var3151)) ; Statement: r0.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer: com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer hoistRenamer> = $r6 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3723-to-var3125=([com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer], java.lang.Object), var1492-init=([], java.util.LinkedHashMap), <init>/-1461814690=([java.util.LinkedHashMap], void), cast-from-var1492-to-var131=([java.util.LinkedHashMap], java.util.Map), declarations/400687851=([com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer], java.util.Map), convention/400687851=([com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer], com.google.javascript.jscomp.CodingConvention), uniqueIdSupplier/400687851=([com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer], java.util.function.Supplier), isEmpty/-1285796103=([java.lang.String], boolean), var647_checkArgument/1735511034=([boolean], void), idPrefix/400687851=([com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer], java.lang.String), removeConstness/400687851=([com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer], boolean), var2659_getHoistRenamer/-1230917076=([com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer], com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer), hoistRenamer/400687851=([com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer], com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer)}
; {var3723=com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer, var453=r0, var1987=com.google.javascript.jscomp.CodingConvention, var2600=r2, var276=java.util.function.Supplier, var3431=r3, var1608=r4, var2525=null_type, var3519=z1, var3373=z2, var2659=com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer, var192=r5, var3125=java.lang.Object, var1492=java.util.LinkedHashMap, var899=$r1, var131=java.util.Map, var2551=$z0, var2205=$z3, var647=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions, var3151=$r6}
; {com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer=var3723, r0=var453, com.google.javascript.jscomp.CodingConvention=var1987, r2=var2600, java.util.function.Supplier=var276, r3=var3431, r4=var1608, null_type=var2525, z1=var3519, z2=var3373, com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer=var2659, r5=var192, java.lang.Object=var3125, java.util.LinkedHashMap=var1492, $r1=var899, java.util.Map=var131, $z0=var2551, $z3=var2205, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var647, $r6=var3151}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer;	r2 := @parameter0: com.google.javascript.jscomp.CodingConvention;	r3 := @parameter1: java.util.function.Supplier;	r4 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	r5 := @parameter5: com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.util.LinkedHashMap;	specialinvoke $r1.<java.util.LinkedHashMap: void <init>()>();	r0.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer: java.util.Map declarations> = $r1;	r0.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer: com.google.javascript.jscomp.CodingConvention convention> = r2;	r0.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer: java.util.function.Supplier uniqueIdSupplier> = r3;	$z0 = virtualinvoke r4.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $z3 = 0;	$z3 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z3)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z3);	r0.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer: java.lang.String idPrefix> = r4;	r0.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer: boolean removeConstness> = z1;	if z2 == 0 goto $r6 = interfaceinvoke r5.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer: com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer getHoistRenamer()>();	$r6 = interfaceinvoke r5.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer: com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer getHoistRenamer()>();	r0.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer: com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer hoistRenamer> = $r6;	return
;block_num 5