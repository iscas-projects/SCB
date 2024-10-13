(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var332 0)
(declare-sort var1625 0)
(declare-sort var3204 0)
(declare-sort var3368 0)
(declare-sort var3451 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun this$0/-1670109418 (var332) var1625)
(declare-fun var1625_access$1400/210068563 (var1625) String)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun c/-1670109418 (var332) var3368)
(declare-fun String_valueOf/-333372740 (var3451) String)
(declare-fun cast-from-var3368-to-var3451 (var3368) var3451)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var332 var332)
(declare-const null-String String)
(declare-const var2722 var332) ; Statement: r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$ConcatResource 
(assert (not (= var2722 null-var332)))
(define-const var2487 var1625 (this$0/-1670109418 var2722)) ; Statement: $r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$ConcatResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat this$0> 
(define-const var425 String (var1625_access$1400/210068563 var2487)) ; Statement: $r2 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat: java.lang.String access$1400(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat)>($r1) 
 ; Statement: if $r2 != null goto $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$ConcatResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat this$0> 
(assert (not (not (= var425 null-String)))) ; Negate: Cond: $r2 != null  
(define-const var884 String String-init) ; Statement: $r4 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var884)) ; Statement: specialinvoke $r4.<java.lang.StringBuilder: void <init>()>() 
(declare-const var884!1 String)
(assert (= var884!1 ""))
(assert true)
(define-const var112 String (append/672562846 var884!1 "concat (")) ; Statement: $r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("concat (") 
(declare-const var884!2 String)
(assert (= var884!2 (str.++ var884!1 "concat (")))
(define-const var70 var3368 (c/-1670109418 var2722)) ; Statement: $r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$ConcatResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection c> 
(define-const var3136 String (String_valueOf/-333372740 (cast-from-var3368-to-var3451 var70))) ; Statement: $r6 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r5) 
(assert true)
(define-const var2650 String (append/672562846 var112 var3136)) ; Statement: $r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6) 
(declare-const var112!1 String)
(assert (= var112!1 (str.++ var112 var3136)))
(assert true)
(define-const var363 String (append/672562846 var2650 ")")) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")") 
(declare-const var2650!1 String)
(assert (= var2650!1 (str.++ var2650 ")")))
(assert true)
(define-const var3981 String (toString/-2075883882 var363)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: goto [?= return $r10] 
(assert true) ; Non Conditional
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {this$0/-1670109418=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$ConcatResource], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat), var1625_access$1400/210068563=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat], java.lang.String), String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), c/-1670109418=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$ConcatResource], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection), String_valueOf/-333372740=([java.lang.Object], java.lang.String), cast-from-var3368-to-var3451=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var332=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$ConcatResource, var2722=r0, var1625=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat, var2487=$r1, var425=$r2, var3204=null_type, var884=$r4, var112=$r7, var3368=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection, var70=$r5, var3451=java.lang.Object, var3136=$r6, var2650=$r8, var363=$r9, var3981=$r10}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$ConcatResource=var332, r0=var2722, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat=var1625, $r1=var2487, $r2=var425, null_type=var3204, $r4=var884, $r7=var112, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection=var3368, $r5=var70, java.lang.Object=var3451, $r6=var3136, $r8=var2650, $r9=var363, $r10=var3981}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.String: java.lang.String valueOf(java.lang.Object)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.String: java.lang.String valueOf(java.lang.Object)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r0 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$ConcatResource;	$r1 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$ConcatResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat this$0>;	$r2 = staticinvoke <com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat: java.lang.String access$1400(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat)>($r1);	if $r2 != null goto $r3 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$ConcatResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat this$0>;	$r4 = new java.lang.StringBuilder;	specialinvoke $r4.<java.lang.StringBuilder: void <init>()>();	$r7 = virtualinvoke $r4.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("concat (");	$r5 = r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.taskdefs.Concat$ConcatResource: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.ResourceCollection c>;	$r6 = staticinvoke <java.lang.String: java.lang.String valueOf(java.lang.Object)>($r5);	$r8 = virtualinvoke $r7.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r6);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(")");	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	goto [?= return $r10];	return $r10
;block_num 3