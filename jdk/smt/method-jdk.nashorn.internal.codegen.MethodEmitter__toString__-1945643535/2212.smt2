(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3495 0)
(declare-sort var3306 0)
(declare-sort var220 0)
(declare-sort var3149 0)
(declare-sort var1679 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun functionNode/656530713 (var3495) var3306)
(declare-fun cast-from-var3149-to-var220 (var3149) var220)
(declare-fun method/656530713 (var3495) var3149)
(declare-fun toString/-522406933 (var220) String)
(declare-fun append/-1166366385 (String Int) String)
(declare-fun var1679_id/-2071121520 (var220) String)
(declare-fun cast-from-var3495-to-var220 (var3495) var220)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3495 var3495)
(declare-const null-var3306 var3306)
(declare-const var69 var3495) ; Statement: r1 := @this: jdk.nashorn.internal.codegen.MethodEmitter 
(assert (not (= var69 null-var3495)))
(define-const var1559 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1559)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1559!1 String)
(assert (= var1559!1 ""))
(assert true)
(define-const var3907 String (append/672562846 var1559!1 "methodEmitter: ")) ; Statement: $r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("methodEmitter: ") 
(declare-const var1559!2 String)
(assert (= var1559!2 (str.++ var1559!1 "methodEmitter: ")))
(define-const var2541 var3306 (functionNode/656530713 var69)) ; Statement: $r2 = r1.<jdk.nashorn.internal.codegen.MethodEmitter: jdk.nashorn.internal.ir.FunctionNode functionNode> 
 ; Statement: if $r2 != null goto $r3 = r1.<jdk.nashorn.internal.codegen.MethodEmitter: jdk.nashorn.internal.ir.FunctionNode functionNode> 
(assert (not (not (= var2541 null-var3306)))) ; Negate: Cond: $r2 != null  
(define-const var130 var220 (cast-from-var3149-to-var220 (method/656530713 var69))) ; Statement: $r11 = r1.<jdk.nashorn.internal.codegen.MethodEmitter: jdk.internal.org.objectweb.asm.MethodVisitor method> 
 ; Statement: goto [?= $r4 = virtualinvoke $r11.<java.lang.Object: java.lang.String toString()>()] 
(assert true) ; Non Conditional
(assert true)
(define-const var2221 String (toString/-522406933 var130)) ; Statement: $r4 = virtualinvoke $r11.<java.lang.Object: java.lang.String toString()>() 
(assert true)
(define-const var1136 String (append/672562846 var3907 var2221)) ; Statement: $r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4) 
(declare-const var3907!1 String)
(assert (= var3907!1 (str.++ var3907 var2221)))
(assert true)
(define-const var1534 String (append/-1166366385 var1136 32)) ; Statement: $r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32) 
(declare-const var1136!1 String)
(assert (str.prefixof var1136 var1136!1))
(define-const var162 String (var1679_id/-2071121520 (cast-from-var3495-to-var220 var69))) ; Statement: $r7 = staticinvoke <jdk.nashorn.internal.runtime.Debug: java.lang.String id(java.lang.Object)>(r1) 
(assert true)
(define-const var2547 String (append/672562846 var1534 var162)) ; Statement: $r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7) 
(declare-const var1534!1 String)
(assert (= var1534!1 (str.++ var1534 var162)))
(assert true)
(define-const var2228 String (toString/-2075883882 var2547)) ; Statement: $r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r10 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), functionNode/656530713=([jdk.nashorn.internal.codegen.MethodEmitter], jdk.nashorn.internal.ir.FunctionNode), cast-from-var3149-to-var220=([jdk.internal.org.objectweb.asm.MethodVisitor], java.lang.Object), method/656530713=([jdk.nashorn.internal.codegen.MethodEmitter], jdk.internal.org.objectweb.asm.MethodVisitor), toString/-522406933=([java.lang.Object], java.lang.String), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), var1679_id/-2071121520=([java.lang.Object], java.lang.String), cast-from-var3495-to-var220=([jdk.nashorn.internal.codegen.MethodEmitter], java.lang.Object), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3495=jdk.nashorn.internal.codegen.MethodEmitter, var69=r1, var1559=$r0, var3907=$r5, var3306=jdk.nashorn.internal.ir.FunctionNode, var2541=$r2, var220=java.lang.Object, var3149=jdk.internal.org.objectweb.asm.MethodVisitor, var130=$r11, var2221=$r4, var1136=$r6, var1534=$r8, var1679=jdk.nashorn.internal.runtime.Debug, var162=$r7, var2547=$r9, var2228=$r10}
; {jdk.nashorn.internal.codegen.MethodEmitter=var3495, r1=var69, $r0=var1559, $r5=var3907, jdk.nashorn.internal.ir.FunctionNode=var3306, $r2=var2541, java.lang.Object=var220, jdk.internal.org.objectweb.asm.MethodVisitor=var3149, $r11=var130, $r4=var2221, $r6=var1136, $r8=var1534, jdk.nashorn.internal.runtime.Debug=var1679, $r7=var162, $r9=var2547, $r10=var2228}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.Object: java.lang.String toString()>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 3,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: jdk.nashorn.internal.codegen.MethodEmitter;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r5 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("methodEmitter: ");	$r2 = r1.<jdk.nashorn.internal.codegen.MethodEmitter: jdk.nashorn.internal.ir.FunctionNode functionNode>;	if $r2 != null goto $r3 = r1.<jdk.nashorn.internal.codegen.MethodEmitter: jdk.nashorn.internal.ir.FunctionNode functionNode>;	$r11 = r1.<jdk.nashorn.internal.codegen.MethodEmitter: jdk.internal.org.objectweb.asm.MethodVisitor method>;	goto [?= $r4 = virtualinvoke $r11.<java.lang.Object: java.lang.String toString()>()];	$r4 = virtualinvoke $r11.<java.lang.Object: java.lang.String toString()>();	$r6 = virtualinvoke $r5.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r4);	$r8 = virtualinvoke $r6.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(32);	$r7 = staticinvoke <jdk.nashorn.internal.runtime.Debug: java.lang.String id(java.lang.Object)>(r1);	$r9 = virtualinvoke $r8.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r7);	$r10 = virtualinvoke $r9.<java.lang.StringBuilder: java.lang.String toString()>();	return $r10
;block_num 3