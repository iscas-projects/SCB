(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3906 0)
(declare-sort var97 0)
(declare-sort var1898 0)
(declare-sort var3934 0)
(declare-sort var865 0)
(declare-sort var3052 0)
(declare-sort var3687 0)
(declare-sort var886 0)
(declare-sort var892 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var3052) void)
(declare-fun cast-from-var3906-to-var3052 (var3906) var3052)
(declare-fun var3687-init () var3687)
(declare-fun <init>/-1461814690 (var3687) void)
(declare-fun cast-from-var3687-to-var886 (var3687) var886)
(declare-fun declarations/400687851 (var3906) var886)
(declare-fun convention/400687851 (var3906) var97)
(declare-fun uniqueIdSupplier/400687851 (var3906) var1898)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var892_checkArgument/1735511034 (Bool) void)
(declare-fun idPrefix/400687851 (var3906) String)
(declare-fun removeConstness/400687851 (var3906) Bool)
(declare-fun cast-from-var3906-to-var865 (var3906) var865)
(declare-fun hoistRenamer/400687851 (var3906) var865)
(declare-const null-var3906 var3906)
(declare-const null-var97 var97)
(declare-const null-var1898 var1898)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var865 var865)
(declare-const var1684 var3906) ; Statement: r0 := @this: com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer 
(assert (not (= var1684 null-var3906)))
(declare-const var3444 var97) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.CodingConvention 
(assert (not (= var3444 null-var97)))
(declare-const var1900 var1898) ; Statement: r3 := @parameter1: java.util.function.Supplier 
(assert (not (= var1900 null-var1898)))
(declare-const var1339 String) ; Statement: r4 := @parameter2: java.lang.String 
(assert (not (= var1339 null-String)))
(declare-const var3417 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var3417 null-Bool)))
(declare-const var3396 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var3396 null-Bool)))
(declare-const var242 var865) ; Statement: r5 := @parameter5: com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer 
(assert (not (= var242 null-var865)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var3906-to-var3052 var1684))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var1684!1 var3906)
(define-const var566 var3687 var3687-init) ; Statement: $r1 = new java.util.LinkedHashMap 
(assert true)
;(assert (<init>/-1461814690 var566)) ; Statement: specialinvoke $r1.<java.util.LinkedHashMap: void <init>()>() 

(declare-const var566!1 var3687)
(declare-const var1684!2 var3906)
(assert (not (= var1684!2 null-var3906)))
(assert (= (declarations/400687851 var1684!2) (cast-from-var3687-to-var886 var566!1))) ; Statement: r0.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer: java.util.Map declarations> = $r1 
(declare-const var1684!3 var3906)
(assert (not (= var1684!3 null-var3906)))
(assert (= (convention/400687851 var1684!3) var3444)) ; Statement: r0.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer: com.google.javascript.jscomp.CodingConvention convention> = r2 
(declare-const var1684!4 var3906)
(assert (not (= var1684!4 null-var3906)))
(assert (= (uniqueIdSupplier/400687851 var1684!4) var1900)) ; Statement: r0.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer: java.util.function.Supplier uniqueIdSupplier> = r3 
(assert true)
(define-const var3018 Bool (isEmpty/-1285796103 var1339)) ; Statement: $z0 = virtualinvoke r4.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z3 = 0 
(assert (not (not (= (ite var3018 1 0) 0)))) ; Negate: Cond: $z0 != 0  
(define-const var1092 Bool (ite (= 1 1) true false)) ; Statement: $z3 = 1 
 ; Statement: goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z3)] 
(assert true) ; Non Conditional
;(assert (var892_checkArgument/1735511034 var1092)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z3) 

(declare-const var1092!1 Bool)
(declare-const var1684!5 var3906)
(assert (not (= var1684!5 null-var3906)))
(assert (= (idPrefix/400687851 var1684!5) var1339)) ; Statement: r0.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer: java.lang.String idPrefix> = r4 
(declare-const var1684!6 var3906)
(assert (not (= var1684!6 null-var3906)))
(assert (= (removeConstness/400687851 var1684!6) var3417)) ; Statement: r0.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer: boolean removeConstness> = z1 
 ; Statement: if z2 == 0 goto $r6 = interfaceinvoke r5.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer: com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer getHoistRenamer()>() 
(assert (not (= (ite var3396 1 0) 0))) ; Negate: Cond: z2 == 0  
(declare-const var1684!7 var3906)
(assert (not (= var1684!7 null-var3906)))
(assert (= (hoistRenamer/400687851 var1684!7) (cast-from-var3906-to-var865 var1684!6))) ; Statement: r0.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer: com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer hoistRenamer> = r0 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var3906-to-var3052=([com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer], java.lang.Object), var3687-init=([], java.util.LinkedHashMap), <init>/-1461814690=([java.util.LinkedHashMap], void), cast-from-var3687-to-var886=([java.util.LinkedHashMap], java.util.Map), declarations/400687851=([com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer], java.util.Map), convention/400687851=([com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer], com.google.javascript.jscomp.CodingConvention), uniqueIdSupplier/400687851=([com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer], java.util.function.Supplier), isEmpty/-1285796103=([java.lang.String], boolean), var892_checkArgument/1735511034=([boolean], void), idPrefix/400687851=([com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer], java.lang.String), removeConstness/400687851=([com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer], boolean), cast-from-var3906-to-var865=([com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer], com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer), hoistRenamer/400687851=([com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer], com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer)}
; {var3906=com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer, var1684=r0, var97=com.google.javascript.jscomp.CodingConvention, var3444=r2, var1898=java.util.function.Supplier, var1900=r3, var1339=r4, var3934=null_type, var3417=z1, var3396=z2, var865=com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer, var242=r5, var3052=java.lang.Object, var3687=java.util.LinkedHashMap, var566=$r1, var886=java.util.Map, var3018=$z0, var1092=$z3, var892=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions}
; {com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer=var3906, r0=var1684, com.google.javascript.jscomp.CodingConvention=var97, r2=var3444, java.util.function.Supplier=var1898, r3=var1900, r4=var1339, null_type=var3934, z1=var3417, z2=var3396, com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer=var865, r5=var242, java.lang.Object=var3052, java.util.LinkedHashMap=var3687, $r1=var566, java.util.Map=var886, $z0=var3018, $z3=var1092, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var892}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer;	r2 := @parameter0: com.google.javascript.jscomp.CodingConvention;	r3 := @parameter1: java.util.function.Supplier;	r4 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	r5 := @parameter5: com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.util.LinkedHashMap;	specialinvoke $r1.<java.util.LinkedHashMap: void <init>()>();	r0.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer: java.util.Map declarations> = $r1;	r0.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer: com.google.javascript.jscomp.CodingConvention convention> = r2;	r0.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer: java.util.function.Supplier uniqueIdSupplier> = r3;	$z0 = virtualinvoke r4.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $z3 = 0;	$z3 = 1;	goto [?= staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z3)];	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z3);	r0.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer: java.lang.String idPrefix> = r4;	r0.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer: boolean removeConstness> = z1;	if z2 == 0 goto $r6 = interfaceinvoke r5.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer: com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer getHoistRenamer()>();	r0.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer: com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer hoistRenamer> = r0;	goto [?= return];	return
;block_num 5