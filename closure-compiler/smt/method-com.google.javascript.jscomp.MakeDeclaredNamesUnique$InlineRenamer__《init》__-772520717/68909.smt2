(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var2656 0)
(declare-sort var1621 0)
(declare-sort var95 0)
(declare-sort var978 0)
(declare-sort var690 0)
(declare-sort var2698 0)
(declare-sort var144 0)
(declare-sort var2477 0)
(declare-sort var2766 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun <init>/-279557996 (var2698) void)
(declare-fun cast-from-var2656-to-var2698 (var2656) var2698)
(declare-fun var144-init () var144)
(declare-fun <init>/-1461814690 (var144) void)
(declare-fun cast-from-var144-to-var2477 (var144) var2477)
(declare-fun declarations/400687851 (var2656) var2477)
(declare-fun convention/400687851 (var2656) var1621)
(declare-fun uniqueIdSupplier/400687851 (var2656) var95)
(define-fun isEmpty/-1285796103 ((s String)) Bool (= (str.len s) 0))
(declare-fun var2766_checkArgument/1735511034 (Bool) void)
(declare-fun idPrefix/400687851 (var2656) String)
(declare-fun removeConstness/400687851 (var2656) Bool)
(declare-fun cast-from-var2656-to-var690 (var2656) var690)
(declare-fun hoistRenamer/400687851 (var2656) var690)
(declare-const null-var2656 var2656)
(declare-const null-var1621 var1621)
(declare-const null-var95 var95)
(declare-const null-String String)
(declare-const null-Bool Bool)
(declare-const null-var690 var690)
(declare-const var932 var2656) ; Statement: r0 := @this: com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer 
(assert (not (= var932 null-var2656)))
(declare-const var943 var1621) ; Statement: r2 := @parameter0: com.google.javascript.jscomp.CodingConvention 
(assert (not (= var943 null-var1621)))
(declare-const var3574 var95) ; Statement: r3 := @parameter1: java.util.function.Supplier 
(assert (not (= var3574 null-var95)))
(declare-const var1973 String) ; Statement: r4 := @parameter2: java.lang.String 
(assert (not (= var1973 null-String)))
(declare-const var3768 Bool) ; Statement: z1 := @parameter3: boolean 
(assert (not (= var3768 null-Bool)))
(declare-const var1097 Bool) ; Statement: z2 := @parameter4: boolean 
(assert (not (= var1097 null-Bool)))
(declare-const var2125 var690) ; Statement: r5 := @parameter5: com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer 
(assert (not (= var2125 null-var690)))
(assert true)
;(assert (<init>/-279557996 (cast-from-var2656-to-var2698 var932))) ; Statement: specialinvoke r0.<java.lang.Object: void <init>()>() 

(declare-const var932!1 var2656)
(define-const var1757 var144 var144-init) ; Statement: $r1 = new java.util.LinkedHashMap 
(assert true)
;(assert (<init>/-1461814690 var1757)) ; Statement: specialinvoke $r1.<java.util.LinkedHashMap: void <init>()>() 

(declare-const var1757!1 var144)
(declare-const var932!2 var2656)
(assert (not (= var932!2 null-var2656)))
(assert (= (declarations/400687851 var932!2) (cast-from-var144-to-var2477 var1757!1))) ; Statement: r0.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer: java.util.Map declarations> = $r1 
(declare-const var932!3 var2656)
(assert (not (= var932!3 null-var2656)))
(assert (= (convention/400687851 var932!3) var943)) ; Statement: r0.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer: com.google.javascript.jscomp.CodingConvention convention> = r2 
(declare-const var932!4 var2656)
(assert (not (= var932!4 null-var2656)))
(assert (= (uniqueIdSupplier/400687851 var932!4) var3574)) ; Statement: r0.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer: java.util.function.Supplier uniqueIdSupplier> = r3 
(assert true)
(define-const var3999 Bool (isEmpty/-1285796103 var1973)) ; Statement: $z0 = virtualinvoke r4.<java.lang.String: boolean isEmpty()>() 
 ; Statement: if $z0 != 0 goto $z3 = 0 
(assert (not (= (ite var3999 1 0) 0))) ; Cond: $z0 != 0 
(define-const var293 Bool (ite (= 1 0) true false)) ; Statement: $z3 = 0 
(assert true) ; Non Conditional
;(assert (var2766_checkArgument/1735511034 var293)) ; Statement: staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z3) 

(declare-const var293!1 Bool)
(declare-const var932!5 var2656)
(assert (not (= var932!5 null-var2656)))
(assert (= (idPrefix/400687851 var932!5) var1973)) ; Statement: r0.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer: java.lang.String idPrefix> = r4 
(declare-const var932!6 var2656)
(assert (not (= var932!6 null-var2656)))
(assert (= (removeConstness/400687851 var932!6) var3768)) ; Statement: r0.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer: boolean removeConstness> = z1 
 ; Statement: if z2 == 0 goto $r6 = interfaceinvoke r5.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer: com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer getHoistRenamer()>() 
(assert (not (= (ite var1097 1 0) 0))) ; Negate: Cond: z2 == 0  
(declare-const var932!7 var2656)
(assert (not (= var932!7 null-var2656)))
(assert (= (hoistRenamer/400687851 var932!7) (cast-from-var2656-to-var690 var932!6))) ; Statement: r0.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer: com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer hoistRenamer> = r0 
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {<init>/-279557996=([java.lang.Object], void), cast-from-var2656-to-var2698=([com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer], java.lang.Object), var144-init=([], java.util.LinkedHashMap), <init>/-1461814690=([java.util.LinkedHashMap], void), cast-from-var144-to-var2477=([java.util.LinkedHashMap], java.util.Map), declarations/400687851=([com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer], java.util.Map), convention/400687851=([com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer], com.google.javascript.jscomp.CodingConvention), uniqueIdSupplier/400687851=([com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer], java.util.function.Supplier), isEmpty/-1285796103=([java.lang.String], boolean), var2766_checkArgument/1735511034=([boolean], void), idPrefix/400687851=([com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer], java.lang.String), removeConstness/400687851=([com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer], boolean), cast-from-var2656-to-var690=([com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer], com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer), hoistRenamer/400687851=([com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer], com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer)}
; {var2656=com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer, var932=r0, var1621=com.google.javascript.jscomp.CodingConvention, var943=r2, var95=java.util.function.Supplier, var3574=r3, var1973=r4, var978=null_type, var3768=z1, var1097=z2, var690=com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer, var2125=r5, var2698=java.lang.Object, var144=java.util.LinkedHashMap, var1757=$r1, var2477=java.util.Map, var3999=$z0, var293=$z3, var2766=com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions}
; {com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer=var2656, r0=var932, com.google.javascript.jscomp.CodingConvention=var1621, r2=var943, java.util.function.Supplier=var95, r3=var3574, r4=var1973, null_type=var978, z1=var3768, z2=var1097, com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer=var690, r5=var2125, java.lang.Object=var2698, java.util.LinkedHashMap=var144, $r1=var1757, java.util.Map=var2477, $z0=var3999, $z3=var293, com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions=var2766}
;seq <java.lang.String: boolean isEmpty()>
;cnt {"<java.lang.String: boolean isEmpty()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer;	r2 := @parameter0: com.google.javascript.jscomp.CodingConvention;	r3 := @parameter1: java.util.function.Supplier;	r4 := @parameter2: java.lang.String;	z1 := @parameter3: boolean;	z2 := @parameter4: boolean;	r5 := @parameter5: com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer;	specialinvoke r0.<java.lang.Object: void <init>()>();	$r1 = new java.util.LinkedHashMap;	specialinvoke $r1.<java.util.LinkedHashMap: void <init>()>();	r0.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer: java.util.Map declarations> = $r1;	r0.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer: com.google.javascript.jscomp.CodingConvention convention> = r2;	r0.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer: java.util.function.Supplier uniqueIdSupplier> = r3;	$z0 = virtualinvoke r4.<java.lang.String: boolean isEmpty()>();	if $z0 != 0 goto $z3 = 0;	$z3 = 0;	staticinvoke <com.google.javascript.jscomp.jarjar.com.google.common.base.Preconditions: void checkArgument(boolean)>($z3);	r0.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer: java.lang.String idPrefix> = r4;	r0.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer: boolean removeConstness> = z1;	if z2 == 0 goto $r6 = interfaceinvoke r5.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer: com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer getHoistRenamer()>();	r0.<com.google.javascript.jscomp.MakeDeclaredNamesUnique$InlineRenamer: com.google.javascript.jscomp.MakeDeclaredNamesUnique$Renamer hoistRenamer> = r0;	goto [?= return];	return
;block_num 5