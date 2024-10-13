(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var3123 0)
(declare-sort var3591 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun String-init () String)
(define-fun <init>/1968657023 () String "")
(declare-fun getClass/1258963082 (var3591) ClassObject)
(declare-fun cast-from-var3123-to-var3591 (var3123) var3591)
(declare-fun getName/-1958580599 (ClassObject) String)
(declare-fun lastIndexOf/-1292097097 (String Int) Int)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun append/-1166366385 (String Int) String)
(declare-fun toString2/978461031 (var3123 String) void)
(define-fun toString/-2075883882 ((s String)) String s)
(declare-const null-var3123 var3123)
(declare-const var2459 var3123) ; Statement: r1 := @this: org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock 
(assert (not (= var2459 null-var3123)))
(define-const var616 String String-init) ; Statement: $r0 = new java.lang.StringBuilder 
(assert true)
;(assert (<init>/1968657023 var616)) ; Statement: specialinvoke $r0.<java.lang.StringBuilder: void <init>()>() 
(declare-const var616!1 String)
(assert (= var616!1 ""))
(assert true)
(define-const var1673 ClassObject (getClass/1258963082 (cast-from-var3123-to-var3591 var2459))) ; Statement: $r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>() 
(assert true)
(define-const var1725 String (getName/-1958580599 var1673)) ; Statement: r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>() 
(assert true)
(define-const var1602 Int (lastIndexOf/-1292097097 var1725 46)) ; Statement: i0 = virtualinvoke r3.<java.lang.String: int lastIndexOf(int)>(46) 
 ; Statement: if i0 >= 0 goto $i1 = i0 + 1 
(assert (not (>= var1602 0))) ; Negate: Cond: i0 >= 0  
(define-const var2086 String var1725) ; Statement: $r5 = r3 
 ; Statement: goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5)] 
(assert true) ; Non Conditional
(assert true)
;(assert (append/672562846 var616!1 var2086)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5) 
(declare-const var616!2 String)
(assert (= var616!2 (str.++ var616!1 var2086)))
(assert true)
;(assert (append/-1166366385 var616!2 91)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91) 
(declare-const var616!3 String)
(assert (str.prefixof var616!2 var616!3))
(assert true)
;(assert (toString2/978461031 var2459 var616!3)) ; Statement: virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock: void toString2(java.lang.StringBuilder)>($r0) 

(declare-const var2459!1 var3123)
(declare-const var616!4 String)
(assert true)
;(assert (append/-1166366385 var616!4 93)) ; Statement: virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93) 
(declare-const var616!5 String)
(assert (str.prefixof var616!4 var616!5))
(assert true)
(define-const var563 String (toString/-2075883882 var616!5)) ; Statement: $r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>() 
 ; Statement: return $r4 
(check-sat)
(get-model)
(get-unsat-core)
; {String-init=([], java.lang.StringBuilder), <init>/1968657023=([java.lang.StringBuilder], void), getClass/1258963082=([java.lang.Object], java.lang.Class), cast-from-var3123-to-var3591=([org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock], java.lang.Object), getName/-1958580599=([java.lang.Class], java.lang.String), lastIndexOf/-1292097097=([java.lang.String, int], int), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder), toString2/978461031=([org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock, java.lang.StringBuilder], void), toString/-2075883882=([java.lang.StringBuilder], java.lang.String)}
; {var3123=org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock, var2459=r1, var616=$r0, var3591=java.lang.Object, var1673=$r2, var1725=r3, var1602=i0, var2086=$r5, var563=$r4}
; {org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock=var3123, r1=var2459, $r0=var616, java.lang.Object=var3591, $r2=var1673, r3=var1725, i0=var1602, $r5=var2086, $r4=var563}
;seq <java.lang.StringBuilder: void <init>()>;	<java.lang.String: int lastIndexOf(int)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock: void toString2(java.lang.StringBuilder)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>;	<java.lang.StringBuilder: java.lang.String toString()>
;cnt {"<java.lang.StringBuilder: void <init>()>": 1,"<java.lang.String: int lastIndexOf(int)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 1,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 2,"<java.lang.StringBuilder: java.lang.String toString()>": 1}
;stmts r1 := @this: org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock;	$r0 = new java.lang.StringBuilder;	specialinvoke $r0.<java.lang.StringBuilder: void <init>()>();	$r2 = virtualinvoke r1.<java.lang.Object: java.lang.Class getClass()>();	r3 = virtualinvoke $r2.<java.lang.Class: java.lang.String getName()>();	i0 = virtualinvoke r3.<java.lang.String: int lastIndexOf(int)>(46);	if i0 >= 0 goto $i1 = i0 + 1;	$r5 = r3;	goto [?= virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5)];	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>($r5);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(91);	virtualinvoke r1.<org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock: void toString2(java.lang.StringBuilder)>($r0);	virtualinvoke $r0.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(93);	$r4 = virtualinvoke $r0.<java.lang.StringBuilder: java.lang.String toString()>();	return $r4
;block_num 3