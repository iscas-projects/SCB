(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var840 0)
(declare-sort var2788 0)
(declare-sort var344 0)
(declare-sort var2795 0)
(declare-sort var3277 0)
(declare-sort var2790 0)
(declare-sort var3976 0)
(declare-sort var915 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/1781689936 (var840) var344)
(declare-fun checkMethodArgCount/-207621435 (var2795 var2788 Int Int) void)
(declare-fun cast-from-var344-to-var2795 (var344) var2795)
(declare-fun getStringMethodArg/-1432244773 (var2795 var2788 Int) String)
(declare-fun getOptStringMethodArg/769411340 (var2795 var2788 Int) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun coll/1781689936 (var840) var3277)
(declare-fun var3277_iterator/-2104594223 (var3277) var2790)
(declare-fun var2790_hasNext/1818624515 (var2790) Bool)
(declare-fun var915-init () var915)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/378607920 (var915 String) void)
(declare-const null-var840 var840)
(declare-const null-var2788 var2788)
(declare-const null-String String)
(declare-const var469 var840) ; Statement: r0 := @this: freemarker.core.BuiltInsForSequences$joinBI$BIMethodForCollection 
(assert (not (= var469 null-var840)))
(declare-const var256 var2788) ; Statement: r1 := @parameter0: java.util.List 
(assert (not (= var256 null-var2788)))
(define-const var2822 var344 (this$0/1781689936 var469)) ; Statement: $r2 = r0.<freemarker.core.BuiltInsForSequences$joinBI$BIMethodForCollection: freemarker.core.BuiltInsForSequences$joinBI this$0> 
(assert true)
;(assert (checkMethodArgCount/-207621435 (cast-from-var344-to-var2795 var2822) var256 1 3)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForSequences$joinBI: void checkMethodArgCount(java.util.List,int,int)>(r1, 1, 3) 

(declare-const var2822!1 var344)
(declare-const var256!1 var2788)
(declare-const var1164 Int)
(declare-const var2204 Int)
(define-const var583 var344 (this$0/1781689936 var469)) ; Statement: $r3 = r0.<freemarker.core.BuiltInsForSequences$joinBI$BIMethodForCollection: freemarker.core.BuiltInsForSequences$joinBI this$0> 
(assert true)
(define-const var2932 String (getStringMethodArg/-1432244773 (cast-from-var344-to-var2795 var583) var256!1 0)) ; Statement: r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForSequences$joinBI: java.lang.String getStringMethodArg(java.util.List,int)>(r1, 0) 
(define-const var3158 var344 (this$0/1781689936 var469)) ; Statement: $r5 = r0.<freemarker.core.BuiltInsForSequences$joinBI$BIMethodForCollection: freemarker.core.BuiltInsForSequences$joinBI this$0> 
(assert true)
(define-const var2254 String (getOptStringMethodArg/769411340 (cast-from-var344-to-var2795 var3158) var256!1 1)) ; Statement: r6 = virtualinvoke $r5.<freemarker.core.BuiltInsForSequences$joinBI: java.lang.String getOptStringMethodArg(java.util.List,int)>(r1, 1) 
(define-const var3506 var344 (this$0/1781689936 var469)) ; Statement: $r7 = r0.<freemarker.core.BuiltInsForSequences$joinBI$BIMethodForCollection: freemarker.core.BuiltInsForSequences$joinBI this$0> 
(assert true)
(define-const var2874 String (getOptStringMethodArg/769411340 (cast-from-var344-to-var2795 var3506) var256!1 2)) ; Statement: r8 = virtualinvoke $r7.<freemarker.core.BuiltInsForSequences$joinBI: java.lang.String getOptStringMethodArg(java.util.List,int)>(r1, 2) 
(define-const var674 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var674)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var674!1 String)
(assert (= var674!1 ""))
(define-const var3249 var3277 (coll/1781689936 var469)) ; Statement: $r10 = r0.<freemarker.core.BuiltInsForSequences$joinBI$BIMethodForCollection: freemarker.template.TemplateCollectionModel coll> 
(define-const var1202 var2790 (var3277_iterator/-2104594223 var3249)) ; Statement: r11 = interfaceinvoke $r10.<freemarker.template.TemplateCollectionModel: freemarker.template.TemplateModelIterator iterator()>() 
(define-const var2756 Int 0) ; Statement: i0 = 0 
(define-const var353 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var3837 Bool (ite (= 1 0) true false)) ; Statement: z3 = 0 
(define-const var995 Bool (ite (= 1 0) true false)) ; Statement: z2 = 0 
(assert true) ; Non Conditional
(define-const var1998 Bool (var2790_hasNext/1818624515 var1202)) ; Statement: $z0 = interfaceinvoke r11.<freemarker.template.TemplateModelIterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var1998 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if z3 == 0 goto (branch) 
(assert (not (= (ite var3837 1 0) 0))) ; Negate: Cond: z3 == 0  
 ; Statement: if r8 == null goto $r22 = new freemarker.template.SimpleScalar 
(assert (= var2874 null-String)) ; Cond: r8 == null 
(define-const var3911 var915 var915-init) ; Statement: $r22 = new freemarker.template.SimpleScalar 
(assert true)
(define-const var2258 String (toString/-2075883882 var674!1)) ; Statement: $r23 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/378607920 var3911 var2258)) ; Statement: specialinvoke $r22.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r23) 

(declare-const var3911!1 var915)
(declare-const var2258!1 String)
 ; Statement: return $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/1781689936=([freemarker.core.BuiltInsForSequences$joinBI$BIMethodForCollection], freemarker.core.BuiltInsForSequences$joinBI), checkMethodArgCount/-207621435=([freemarker.core.BuiltIn, java.util.List, int, int], void), cast-from-var344-to-var2795=([freemarker.core.BuiltInsForSequences$joinBI], freemarker.core.BuiltIn), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), getOptStringMethodArg/769411340=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), coll/1781689936=([freemarker.core.BuiltInsForSequences$joinBI$BIMethodForCollection], freemarker.template.TemplateCollectionModel), var3277_iterator/-2104594223=([freemarker.template.TemplateCollectionModel], freemarker.template.TemplateModelIterator), var2790_hasNext/1818624515=([freemarker.template.TemplateModelIterator], boolean), var915-init=([], freemarker.template.SimpleScalar), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void)}
; {var840=freemarker.core.BuiltInsForSequences$joinBI$BIMethodForCollection, var469=r0, var2788=java.util.List, var256=r1, var344=freemarker.core.BuiltInsForSequences$joinBI, var2822=$r2, var2795=freemarker.core.BuiltIn, var1164=1, var2204=3, var583=$r3, var2932=r4, var3158=$r5, var2254=r6, var3506=$r7, var2874=r8, var674=$r9, var3277=freemarker.template.TemplateCollectionModel, var3249=$r10, var2790=freemarker.template.TemplateModelIterator, var1202=r11, var2756=i0, var353=z1, var3837=z3, var995=z2, var1998=$z0, var3976=null_type, var915=freemarker.template.SimpleScalar, var3911=$r22, var2258=$r23}
; {freemarker.core.BuiltInsForSequences$joinBI$BIMethodForCollection=var840, r0=var469, java.util.List=var2788, r1=var256, freemarker.core.BuiltInsForSequences$joinBI=var344, $r2=var2822, freemarker.core.BuiltIn=var2795, 1=var1164, 3=var2204, $r3=var583, r4=var2932, $r5=var3158, r6=var2254, $r7=var3506, r8=var2874, $r9=var674, freemarker.template.TemplateCollectionModel=var3277, $r10=var3249, freemarker.template.TemplateModelIterator=var2790, r11=var1202, i0=var2756, z1=var353, z3=var3837, z2=var995, $z0=var1998, null_type=var3976, freemarker.template.SimpleScalar=var915, $r22=var3911, $r23=var2258}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core.BuiltInsForSequences$joinBI$BIMethodForCollection;	r1 := @parameter0: java.util.List;	$r2 = r0.<freemarker.core.BuiltInsForSequences$joinBI$BIMethodForCollection: freemarker.core.BuiltInsForSequences$joinBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForSequences$joinBI: void checkMethodArgCount(java.util.List,int,int)>(r1, 1, 3);	$r3 = r0.<freemarker.core.BuiltInsForSequences$joinBI$BIMethodForCollection: freemarker.core.BuiltInsForSequences$joinBI this$0>;	r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForSequences$joinBI: java.lang.String getStringMethodArg(java.util.List,int)>(r1, 0);	$r5 = r0.<freemarker.core.BuiltInsForSequences$joinBI$BIMethodForCollection: freemarker.core.BuiltInsForSequences$joinBI this$0>;	r6 = virtualinvoke $r5.<freemarker.core.BuiltInsForSequences$joinBI: java.lang.String getOptStringMethodArg(java.util.List,int)>(r1, 1);	$r7 = r0.<freemarker.core.BuiltInsForSequences$joinBI$BIMethodForCollection: freemarker.core.BuiltInsForSequences$joinBI this$0>;	r8 = virtualinvoke $r7.<freemarker.core.BuiltInsForSequences$joinBI: java.lang.String getOptStringMethodArg(java.util.List,int)>(r1, 2);	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = r0.<freemarker.core.BuiltInsForSequences$joinBI$BIMethodForCollection: freemarker.template.TemplateCollectionModel coll>;	r11 = interfaceinvoke $r10.<freemarker.template.TemplateCollectionModel: freemarker.template.TemplateModelIterator iterator()>();	i0 = 0;	z1 = 0;	z3 = 0;	z2 = 0;	$z0 = interfaceinvoke r11.<freemarker.template.TemplateModelIterator: boolean hasNext()>();	if $z0 == 0 goto (branch);	if z3 == 0 goto (branch);	if r8 == null goto $r22 = new freemarker.template.SimpleScalar;	$r22 = new freemarker.template.SimpleScalar;	$r23 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r22.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r23);	return $r22
;block_num 5