(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1730 0)
(declare-sort var3947 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var3947) ClassObject)
(declare-fun cast-from-var1730-to-var3947 (var1730) var3947)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun substring/850833817 ((s String) (begin Int)) String (str.substr s begin (- (str.len s) begin)))
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun toString2/978461031 (var1730 String) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var1730 var1730)
(declare-const var1566 var1730) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock 
(assert (not (= var1566 null-var1730)))
(define-const var1346 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var1346)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var1346!1 String)
(assert (= var1346!1 ""))
(assert true)
(define-const var2509 ClassObject (getClass/1258963082 (cast-from-var1730-to-var3947 var1566))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var3615 String (getName/-1958580599 var2509)) ; Statement: r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1729 Int (lastIndexOf/-1292097097 var3615 46)) ; Statement: i0 = virtualinvoke r3.<java.lang.String: int lastIndexOf(int)>(46) 
 ; Statement: if i0 >= 0 goto $i1 = i0 + 1 
(assert (>= var1729 0)) ; Cond: i0 >= 0 
(define-const var3554 Int (+ var1729 1)) ; Statement: $i1 = i0 + 1 
(assert (and true (and (>= var3554 0) (>= (str.len var3615) var3554))))
(define-const var458 String (substring/850833817 var3615 var3554)) ; Statement: $r5 = virtualinvoke r3.<java.lang.String: java.lang.String substring(int)>($i1) 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var1346!1 var458)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var1346!2 String)
(assert (= var1346!2 (str.++ var1346!1 var458)))
(assert true)
;(assert (append/-1166366385 var1346!2 91)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var1346!3 String)
(assert (str.prefixof var1346!2 var1346!3))
(assert true)
;(assert (toString2/978461031 var1566 var1346!3)) ; Statement: virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock: void toString2(java.lang.StringBuilder)>($r0) 

(declare-const var1566!1 var1730)
(declare-const var1346!4 String)
(assert true)
;(assert (append/-1166366385 var1346!4 93)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var1346!5 String)
(assert (str.prefixof var1346!4 var1346!5))
(assert true)
(define-const var1483 String (toString/-2075883882 var1346!5)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var1730-to-var3947=([org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), lastIndexOf/-1292097097=([java.lang.String, int], int), substring/850833817=([java.lang.String, int], java.lang.String), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString2/978461031=([org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock, java.lang.StringBuilder], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var1730=org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock, var1566=r1, var1346=$r0, var3947=java.lang.Object, var2509=$r2, var3615=r3, var1729=i0, var3554=$i1, var458=$r5, var1483=$r4}
; {org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock=var1730, r1=var1566, $r0=var1346, java.lang.Object=var3947, $r2=var2509, r3=var3615, i0=var1729, $i1=var3554, $r5=var458, $r4=var1483}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: int lastIndexOf(int)>;	<java.lang.String: java.lang.String substring(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock: void toString2(java.lang.StringBuilder)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.String: java.lang.String substring(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	i0 = virtualinvoke r3.<java.lang.String: int lastIndexOf(int)>(46);	if i0 >= 0 goto $i1 = i0 + 1;	$i1 = i0 + 1;	$r5 = virtualinvoke r3.<java.lang.String: java.lang.String substring(int)>($i1);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock: void toString2(java.lang.StringBuilder)>($r0);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3