(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3999 0)
(declare-sort var3601 0)
(declare-sort var1552 0)
(declare-sort var2 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun getName/-1170778752 (var3601) String)
(declare-fun getValue/-888859266 (var3601) String)
(declare-fun var1552-init () var1552)
(declare-fun <init>/-1132091222 (var1552) void)
(declare-fun setValue/-565436303 (var2 String) void)
(declare-fun cast-from-var1552-to-var2 (var1552) var2)
(declare-fun setCache/-779422564 (var3999 var1552) void)
(declare-const null-var3999 var3999)
(declare-const null-var3601 var3601)
(declare-const var801 var3999) ; Statement: r9 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ModifiedSelector 
(assert (not (= var801 null-var3999)))
(declare-const var28 var3601) ; Statement: r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Parameter 
(assert (not (= var28 null-var3601)))
(assert true)
(define-const var1718 String (getName/-1170778752 var28)) ; Statement: r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Parameter: java.lang.String getName()>() 
(assert true)
(define-const var2865 String (getValue/-888859266 var28)) ; Statement: r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Parameter: java.lang.String getValue()>() 
(define-const var2866 String "cache") ; Statement: $r3 = "cache" 
(assert true)
(define-const var548 Bool (= var2866 var1718)) ; Statement: $z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r1) 
 ; Statement: if $z0 == 0 goto $r4 = "algorithm" 
(assert (not (= (ite var548 1 0) 0))) ; Negate: Cond: $z0 == 0  
(define-const var2258 var1552 var1552-init) ; Statement: $r25 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ModifiedSelector$CacheName 
(assert true)
;(assert (<init>/-1132091222 var2258)) ; Statement: specialinvoke $r25.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ModifiedSelector$CacheName: void <init>()>() 

(declare-const var2258!1 var1552)
(assert true)
;(assert (setValue/-565436303 (cast-from-var1552-to-var2 var2258!1) var2865)) ; Statement: virtualinvoke $r25.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ModifiedSelector$CacheName: void setValue(java.lang.String)>(r2) 

(declare-const var2258!2 var1552)
(declare-const var2865!1 String)
(assert true)
;(assert (setCache/-779422564 var801 var2258!2)) ; Statement: virtualinvoke r9.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ModifiedSelector: void setCache(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ModifiedSelector$CacheName)>($r25) 

(declare-const var801!1 var3999)
(declare-const var2258!3 var1552)
 ; Statement: goto [?= return] 
(assert true) ; Non Conditional
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {getName/-1170778752=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Parameter], java.lang.String), getValue/-888859266=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Parameter], java.lang.String), var1552-init=([], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ModifiedSelector$CacheName), <init>/-1132091222=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ModifiedSelector$CacheName], void), setValue/-565436303=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute, java.lang.String], void), cast-from-var1552-to-var2=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ModifiedSelector$CacheName], com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute), setCache/-779422564=([com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ModifiedSelector, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ModifiedSelector$CacheName], void)}
; {var3999=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ModifiedSelector, var801=r9, var3601=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Parameter, var28=r0, var1718=r1, var2865=r2, var2866=$r3, var548=$z0, var1552=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ModifiedSelector$CacheName, var2258=$r25, var2=com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute}
; {com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ModifiedSelector=var3999, r9=var801, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Parameter=var3601, r0=var28, r1=var1718, r2=var2865, $r3=var2866, $z0=var548, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ModifiedSelector$CacheName=var1552, $r25=var2258, com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.EnumeratedAttribute=var2}
;seq <java.lang.String: boolean equals(java.lang.Object)>
;cnt {"<java.lang.String: boolean equals(java.lang.Object)>": 1}
;stmts r9 := @this: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ModifiedSelector;	r0 := @parameter0: com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Parameter;	r1 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Parameter: java.lang.String getName()>();	r2 = virtualinvoke r0.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.Parameter: java.lang.String getValue()>();	$r3 = "cache";	$z0 = virtualinvoke $r3.<java.lang.String: boolean equals(java.lang.Object)>(r1);	if $z0 == 0 goto $r4 = "algorithm";	$r25 = new com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ModifiedSelector$CacheName;	specialinvoke $r25.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ModifiedSelector$CacheName: void <init>()>();	virtualinvoke $r25.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ModifiedSelector$CacheName: void setValue(java.lang.String)>(r2);	virtualinvoke r9.<com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ModifiedSelector: void setCache(com.google.javascript.jscomp.jarjar.org.apache.tools.ant.types.selectors.modifiedselector.ModifiedSelector$CacheName)>($r25);	goto [?= return];	return
;block_num 3