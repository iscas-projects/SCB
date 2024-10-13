(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3168 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun var3168_toStringTree/-1348556566 (var3168) String)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3168 var3168)
(declare-const var298 var3168) ; Statement: r1 := @parameter0: antlr.collections.AST 
(assert (not (= var298 null-var3168)))
(define-const var1925 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1925)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1925!1 String)
(assert (= var1925!1 ""))
(assert true)
;(assert (append/672562846 var1925!1 "[ ")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[ ") 
(declare-const var1925!2 String)
(assert (= var1925!2 (str.++ var1925!1 "[ ")))
 ; Statement: if r1 != null goto $r3 = interfaceinvoke r1.<antlr.collections.AST: java.lang.String toStringTree()>() 
(assert (not (= var298 null-var3168))) ; Cond: r1 != null 
(define-const var3187 String (var3168_toStringTree/-1348556566 var298)) ; Statement: $r3 = interfaceinvoke r1.<antlr.collections.AST: java.lang.String toStringTree()>() 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var1925!2 var3187)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3) 
(declare-const var1925!3 String)
(assert (= var1925!3 (str.++ var1925!2 var3187)))
(assert true)
;(assert (append/672562846 var1925!3 " ]")) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ]") 
(declare-const var1925!4 String)
(assert (= var1925!4 (str.++ var1925!3 " ]")))
(assert true)
(define-const var2400 String (toString/-2075883882 var1925!4)) ; Statement: $r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r2 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), var3168_toStringTree/-1348556566=([antlr.collections.AST], java.lang.String), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3168=antlr.collections.AST, var298=r1, var1925=$r0, var3187=$r3, var2400=$r2}
; {antlr.collections.AST=var3168, r1=var298, $r0=var1925, $r3=var3187, $r2=var2400}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<antlr.collections.AST: java.lang.String toStringTree()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @parameter0: antlr.collections.AST;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("[ ");	if r1 != null goto $r3 = interfaceinvoke r1.<antlr.collections.AST: java.lang.String toStringTree()>();	$r3 = interfaceinvoke r1.<antlr.collections.AST: java.lang.String toStringTree()>();	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r3);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(" ]");	$r2 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r2
;block_num 3