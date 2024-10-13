(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var150 0)
(declare-sort var1200 0)
(declare-sort var719 0)
(declare-sort var3515 0)
(declare-sort var3229 0)
(declare-sort var277 0)
(declare-sort var538 0)
(declare-sort var308 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/1781689936 (var150) var719)
(declare-fun checkMethodArgCount/-207621435 (var3515 var1200 Int Int) void)
(declare-fun cast-from-var719-to-var3515 (var719) var3515)
(declare-fun getStringMethodArg/-1432244773 (var3515 var1200 Int) String)
(declare-fun getOptStringMethodArg/769411340 (var3515 var1200 Int) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun coll/1781689936 (var150) var3229)
(declare-fun var3229_iterator/-2104594223 (var3229) var277)
(declare-fun var277_hasNext/1818624515 (var277) Bool)
(declare-fun var308-init () var308)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-fun <init>/378607920 (var308 String) void)
(declare-const null-var150 var150)
(declare-const null-var1200 var1200)
(declare-const null-String String)
(declare-const var407 var150) ; Statement: r0 := @this: freemarker.core.BuiltInsForSequences$joinBI$BIMethodForCollection 
(assert (not (= var407 null-var150)))
(declare-const var727 var1200) ; Statement: r1 := @parameter0: java.util.List 
(assert (not (= var727 null-var1200)))
(define-const var1425 var719 (this$0/1781689936 var407)) ; Statement: $r2 = r0.<freemarker.core.BuiltInsForSequences$joinBI$BIMethodForCollection: freemarker.core.BuiltInsForSequences$joinBI this$0> 
(assert true)
;(assert (checkMethodArgCount/-207621435 (cast-from-var719-to-var3515 var1425) var727 1 3)) ; Statement: virtualinvoke $r2.<freemarker.core.BuiltInsForSequences$joinBI: void checkMethodArgCount(java.util.List,int,int)>(r1, 1, 3) 

(declare-const var1425!1 var719)
(declare-const var727!1 var1200)
(declare-const var575 Int)
(declare-const var601 Int)
(define-const var982 var719 (this$0/1781689936 var407)) ; Statement: $r3 = r0.<freemarker.core.BuiltInsForSequences$joinBI$BIMethodForCollection: freemarker.core.BuiltInsForSequences$joinBI this$0> 
(assert true)
(define-const var2949 String (getStringMethodArg/-1432244773 (cast-from-var719-to-var3515 var982) var727!1 0)) ; Statement: r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForSequences$joinBI: java.lang.String getStringMethodArg(java.util.List,int)>(r1, 0) 
(define-const var743 var719 (this$0/1781689936 var407)) ; Statement: $r5 = r0.<freemarker.core.BuiltInsForSequences$joinBI$BIMethodForCollection: freemarker.core.BuiltInsForSequences$joinBI this$0> 
(assert true)
(define-const var1659 String (getOptStringMethodArg/769411340 (cast-from-var719-to-var3515 var743) var727!1 1)) ; Statement: r6 = virtualinvoke $r5.<freemarker.core.BuiltInsForSequences$joinBI: java.lang.String getOptStringMethodArg(java.util.List,int)>(r1, 1) 
(define-const var1553 var719 (this$0/1781689936 var407)) ; Statement: $r7 = r0.<freemarker.core.BuiltInsForSequences$joinBI$BIMethodForCollection: freemarker.core.BuiltInsForSequences$joinBI this$0> 
(assert true)
(define-const var2642 String (getOptStringMethodArg/769411340 (cast-from-var719-to-var3515 var1553) var727!1 2)) ; Statement: r8 = virtualinvoke $r7.<freemarker.core.BuiltInsForSequences$joinBI: java.lang.String getOptStringMethodArg(java.util.List,int)>(r1, 2) 
(define-const var732 String String-init) ; Statement: $r9 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var732)) ; Statement: specialinvoke $r9.<java.lang.StringBuilder: void <init>()>() 
(declare-const var732!1 String)
(assert (= var732!1 ""))
(define-const var1636 var3229 (coll/1781689936 var407)) ; Statement: $r10 = r0.<freemarker.core.BuiltInsForSequences$joinBI$BIMethodForCollection: freemarker.template.TemplateCollectionModel coll> 
(define-const var3420 var277 (var3229_iterator/-2104594223 var1636)) ; Statement: r11 = interfaceinvoke $r10.<freemarker.template.TemplateCollectionModel: freemarker.template.TemplateModelIterator iterator()>() 
(define-const var196 Int 0) ; Statement: i0 = 0 
(define-const var232 Bool (ite (= 1 0) true false)) ; Statement: z1 = 0 
(define-const var1741 Bool (ite (= 1 0) true false)) ; Statement: z3 = 0 
(define-const var707 Bool (ite (= 1 0) true false)) ; Statement: z2 = 0 
(assert true) ; Non Conditional
(define-const var1568 Bool (var277_hasNext/1818624515 var3420)) ; Statement: $z0 = interfaceinvoke r11.<freemarker.template.TemplateModelIterator: boolean hasNext()>() 
 ; Statement: if $z0 == 0 goto (branch) 
(assert (= (ite var1568 1 0) 0)) ; Cond: $z0 == 0 
 ; Statement: if z3 == 0 goto (branch) 
(assert (= (ite var1741 1 0) 0)) ; Cond: z3 == 0 
 ; Statement: if r6 == null goto $r22 = new freemarker.template.SimpleScalar 
(assert (= var1659 null-String)) ; Cond: r6 == null 
(define-const var2854 var308 var308-init) ; Statement: $r22 = new freemarker.template.SimpleScalar 
(assert true)
(define-const var1563 String (toString/-2075883882 var732!1)) ; Statement: $r23 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
(assert true)
;(assert (<init>/378607920 var2854 var1563)) ; Statement: specialinvoke $r22.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r23) 

(declare-const var2854!1 var308)
(declare-const var1563!1 String)
 ; Statement: return $r22 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/1781689936=([freemarker.core.BuiltInsForSequences$joinBI$BIMethodForCollection], freemarker.core.BuiltInsForSequences$joinBI), checkMethodArgCount/-207621435=([freemarker.core.BuiltIn, java.util.List, int, int], void), cast-from-var719-to-var3515=([freemarker.core.BuiltInsForSequences$joinBI], freemarker.core.BuiltIn), getStringMethodArg/-1432244773=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), getOptStringMethodArg/769411340=([freemarker.core.BuiltIn, java.util.List, int], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), coll/1781689936=([freemarker.core.BuiltInsForSequences$joinBI$BIMethodForCollection], freemarker.template.TemplateCollectionModel), var3229_iterator/-2104594223=([freemarker.template.TemplateCollectionModel], freemarker.template.TemplateModelIterator), var277_hasNext/1818624515=([freemarker.template.TemplateModelIterator], boolean), var308-init=([], freemarker.template.SimpleScalar), toString/-2075883882=([java.lang.StringBuilder], java.lang.String), <init>/378607920=([freemarker.template.SimpleScalar, java.lang.String], void)}
; {var150=freemarker.core.BuiltInsForSequences$joinBI$BIMethodForCollection, var407=r0, var1200=java.util.List, var727=r1, var719=freemarker.core.BuiltInsForSequences$joinBI, var1425=$r2, var3515=freemarker.core.BuiltIn, var575=1, var601=3, var982=$r3, var2949=r4, var743=$r5, var1659=r6, var1553=$r7, var2642=r8, var732=$r9, var3229=freemarker.template.TemplateCollectionModel, var1636=$r10, var277=freemarker.template.TemplateModelIterator, var3420=r11, var196=i0, var232=z1, var1741=z3, var707=z2, var1568=$z0, var538=null_type, var308=freemarker.template.SimpleScalar, var2854=$r22, var1563=$r23}
; {freemarker.core.BuiltInsForSequences$joinBI$BIMethodForCollection=var150, r0=var407, java.util.List=var1200, r1=var727, freemarker.core.BuiltInsForSequences$joinBI=var719, $r2=var1425, freemarker.core.BuiltIn=var3515, 1=var575, 3=var601, $r3=var982, r4=var2949, $r5=var743, r6=var1659, $r7=var1553, r8=var2642, $r9=var732, freemarker.template.TemplateCollectionModel=var3229, $r10=var1636, freemarker.template.TemplateModelIterator=var277, r11=var3420, i0=var196, z1=var232, z3=var1741, z2=var707, $z0=var1568, null_type=var538, freemarker.template.SimpleScalar=var308, $r22=var2854, $r23=var1563}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: freemarker.core.BuiltInsForSequences$joinBI$BIMethodForCollection;	r1 := @parameter0: java.util.List;	$r2 = r0.<freemarker.core.BuiltInsForSequences$joinBI$BIMethodForCollection: freemarker.core.BuiltInsForSequences$joinBI this$0>;	virtualinvoke $r2.<freemarker.core.BuiltInsForSequences$joinBI: void checkMethodArgCount(java.util.List,int,int)>(r1, 1, 3);	$r3 = r0.<freemarker.core.BuiltInsForSequences$joinBI$BIMethodForCollection: freemarker.core.BuiltInsForSequences$joinBI this$0>;	r4 = virtualinvoke $r3.<freemarker.core.BuiltInsForSequences$joinBI: java.lang.String getStringMethodArg(java.util.List,int)>(r1, 0);	$r5 = r0.<freemarker.core.BuiltInsForSequences$joinBI$BIMethodForCollection: freemarker.core.BuiltInsForSequences$joinBI this$0>;	r6 = virtualinvoke $r5.<freemarker.core.BuiltInsForSequences$joinBI: java.lang.String getOptStringMethodArg(java.util.List,int)>(r1, 1);	$r7 = r0.<freemarker.core.BuiltInsForSequences$joinBI$BIMethodForCollection: freemarker.core.BuiltInsForSequences$joinBI this$0>;	r8 = virtualinvoke $r7.<freemarker.core.BuiltInsForSequences$joinBI: java.lang.String getOptStringMethodArg(java.util.List,int)>(r1, 2);	$r9 = new java.lang.StringBuilder;	specialinvoke $r9.<java.lang.StringBuilder: void <init>()>();	$r10 = r0.<freemarker.core.BuiltInsForSequences$joinBI$BIMethodForCollection: freemarker.template.TemplateCollectionModel coll>;	r11 = interfaceinvoke $r10.<freemarker.template.TemplateCollectionModel: freemarker.template.TemplateModelIterator iterator()>();	i0 = 0;	z1 = 0;	z3 = 0;	z2 = 0;	$z0 = interfaceinvoke r11.<freemarker.template.TemplateModelIterator: boolean hasNext()>();	if $z0 == 0 goto (branch);	if z3 == 0 goto (branch);	if r6 == null goto $r22 = new freemarker.template.SimpleScalar;	$r22 = new freemarker.template.SimpleScalar;	$r23 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	specialinvoke $r22.<freemarker.template.SimpleScalar: void <init>(java.lang.String)>($r23);	return $r22
;block_num 5