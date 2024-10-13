(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1062 0)
(declare-sort var1189 0)
(declare-sort var405 0)
(declare-sort var2709 0)
(declare-sort var705 0)
(declare-sort var238 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun var1189_size/-959786421 (var1189) Int)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun this$0/-423651887 (var1062) var405)
(declare-fun key/-489369572 (var2709) String)
(declare-fun cast-from-var405-to-var2709 (var405) var2709)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun var238_newArgCntError/978719506 (String Int Int) var705)
(declare-const null-var1062 var1062)
(declare-const null-var1189 var1189)
(declare-const var72 var1062) ; Statement: r4 := @this: freemarker.core.BuiltInsForSequences$sort_byBI$BIMethod 
(assert (not (= var72 null-var1062)))
(declare-const var171 var1189) ; Statement: r0 := @parameter0: java.util.List 
(assert (not (= var171 null-var1189)))
(define-const var3018 Int (var1189_size/-959786421 var171)) ; Statement: $i0 = interfaceinvoke r0.<java.util.List: int size()>() 
 ; Statement: if $i0 >= 1 goto r1 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(0) 
(assert (not (>= var3018 1))) ; Negate: Cond: $i0 >= 1  
(define-const var3567 String String-init) ; Statement: $r16 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var3567)) ; Statement: specialinvoke $r16.<java.lang.StringBuilder: void <init>()>() 
(declare-const var3567!1 String)
(assert (= var3567!1 ""))
(assert true)
(define-const var3836 String (append/672562846 var3567!1 "?")) ; Statement: $r19 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("?") 
(declare-const var3567!2 String)
(assert (= var3567!2 (str.++ var3567!1 "?")))
(define-const var3579 var405 (this$0/-423651887 var72)) ; Statement: $r17 = r4.<freemarker.core.BuiltInsForSequences$sort_byBI$BIMethod: freemarker.core.BuiltInsForSequences$sort_byBI this$0> 
(define-const var938 String (key/-489369572 (cast-from-var405-to-var2709 var3579))) ; Statement: $r18 = $r17.<freemarker.core.BuiltInsForSequences$sort_byBI: java.lang.String key> 
(assert true)
(define-const var303 String (append/672562846 var3836 var938)) ; Statement: $r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18) 
(declare-const var3836!1 String)
(assert (= var3836!1 (str.++ var3836 var938)))
(assert true)
(define-const var1494 String (toString/-2075883882 var303)) ; Statement: $r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>() 
(define-const var3446 Int (var1189_size/-959786421 var171)) ; Statement: $i2 = interfaceinvoke r0.<java.util.List: int size()>() 
(define-const var2952 var705 (var238_newArgCntError/978719506 var1494 var3446 1)) ; Statement: $r22 = staticinvoke <freemarker.core._MessageUtil: freemarker.template.TemplateModelException newArgCntError(java.lang.String,int,int)>($r21, $i2, 1) 
 ; Statement: throw $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {var1189_size/-959786421=([java.util.List], int), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), this$0/-423651887=([freemarker.core.BuiltInsForSequences$sort_byBI$BIMethod], freemarker.core.BuiltInsForSequences$sort_byBI), key/-489369572=([freemarker.core.BuiltIn], java.lang.String), cast-from-var405-to-var2709=([freemarker.core.BuiltInsForSequences$sort_byBI], freemarker.core.BuiltIn), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), var238_newArgCntError/978719506=([java.lang.String, int, int], freemarker.template.TemplateModelException)}
; {var1062=freemarker.core.BuiltInsForSequences$sort_byBI$BIMethod, var72=r4, var1189=java.util.List, var171=r0, var3018=$i0, var3567=$r16, var3836=$r19, var405=freemarker.core.BuiltInsForSequences$sort_byBI, var3579=$r17, var2709=freemarker.core.BuiltIn, var938=$r18, var303=$r20, var1494=$r21, var3446=$i2, var705=freemarker.template.TemplateModelException, var238=freemarker.core._MessageUtil, var2952=$r22}
; {freemarker.core.BuiltInsForSequences$sort_byBI$BIMethod=var1062, r4=var72, java.util.List=var1189, r0=var171, $i0=var3018, $r16=var3567, $r19=var3836, freemarker.core.BuiltInsForSequences$sort_byBI=var405, $r17=var3579, freemarker.core.BuiltIn=var2709, $r18=var938, $r20=var303, $r21=var1494, $i2=var3446, freemarker.template.TemplateModelException=var705, freemarker.core._MessageUtil=var238, $r22=var2952}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r4 := @this: freemarker.core.BuiltInsForSequences$sort_byBI$BIMethod;	r0 := @parameter0: java.util.List;	$i0 = interfaceinvoke r0.<java.util.List: int size()>();	if $i0 >= 1 goto r1 = interfaceinvoke r0.<java.util.List: java.lang.Object get(int)>(0);	$r16 = new java.lang.StringBuilder;	specialinvoke $r16.<java.lang.StringBuilder: void <init>()>();	$r19 = virtualinvoke $r16.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("?");	$r17 = r4.<freemarker.core.BuiltInsForSequences$sort_byBI$BIMethod: freemarker.core.BuiltInsForSequences$sort_byBI this$0>;	$r18 = $r17.<freemarker.core.BuiltInsForSequences$sort_byBI: java.lang.String key>;	$r20 = virtualinvoke $r19.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r18);	$r21 = virtualinvoke $r20.<java.lang.StringBuilder: java.lang.String toString()>();	$i2 = interfaceinvoke r0.<java.util.List: int size()>();	$r22 = staticinvoke <freemarker.core._MessageUtil: freemarker.template.TemplateModelException newArgCntError(java.lang.String,int,int)>($r21, $i2, 1);	throw $r22
;block_num 2