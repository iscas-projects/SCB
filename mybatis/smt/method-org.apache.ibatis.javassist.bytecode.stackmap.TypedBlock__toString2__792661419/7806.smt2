(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1200 0)
(declare-sort var611 0)
(declare-sort var187 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun toString2/978461031 (var611 String) void)
(declare-fun cast-from-var1200-to-var611 (var1200) var611)
(define-fun append/672562846 ((s String) (tail String)) String (str.++ s tail))
(declare-fun stackTop/2041376012 (var1200) Int)
(declare-fun stackTypes/2041376012 (var1200) (Array Int var187))
(declare-fun printTypes/31537845 (var1200 String Int (Array Int var187)) void)
(declare-fun numLocals/2041376012 (var1200) Int)
(declare-fun localsTypes/2041376012 (var1200) (Array Int var187))
(declare-fun append/-1166366385 (String Int) String)
(declare-const null-var1200 var1200)
(declare-const null-String String)
(declare-const var363 var1200) ; Statement: r0 := @this: org.apache.ibatis.javassist.bytecode.stackmap.TypedBlock 
(assert (not (= var363 null-var1200)))
(declare-const var2876 String) ; Statement: r1 := @parameter0: java.lang.StringBuilder 
(assert (not (= var2876 null-String)))
(assert true)
;(assert (toString2/978461031 (cast-from-var1200-to-var611 var363) var2876)) ; Statement: specialinvoke r0.<org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock: void toString2(java.lang.StringBuilder)>(r1) 

(declare-const var363!1 var1200)
(declare-const var2876!1 String)
(assert true)
;(assert (append/672562846 var2876!1 ",\n stack={")) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",\n stack={") 
(declare-const var2876!2 String)
(assert (= var2876!2 (str.++ var2876!1 ",\n stack={")))
(define-const var824 Int (stackTop/2041376012 var363!1)) ; Statement: $i0 = r0.<org.apache.ibatis.javassist.bytecode.stackmap.TypedBlock: int stackTop> 
(define-const var2157 (Array Int var187) (stackTypes/2041376012 var363!1)) ; Statement: $r2 = r0.<org.apache.ibatis.javassist.bytecode.stackmap.TypedBlock: org.apache.ibatis.javassist.bytecode.stackmap.TypeData[] stackTypes> 
(assert true)
;(assert (printTypes/31537845 var363!1 var2876!2 var824 var2157)) ; Statement: specialinvoke r0.<org.apache.ibatis.javassist.bytecode.stackmap.TypedBlock: void printTypes(java.lang.StringBuilder,int,org.apache.ibatis.javassist.bytecode.stackmap.TypeData[])>(r1, $i0, $r2) 

(declare-const var363!2 var1200)
(declare-const var2876!3 String)
(declare-const var824!1 Int)
(declare-const var2157!1 (Array Int var187))
(assert true)
;(assert (append/672562846 var2876!3 "}, locals={")) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}, locals={") 
(declare-const var2876!4 String)
(assert (= var2876!4 (str.++ var2876!3 "}, locals={")))
(define-const var2749 Int (numLocals/2041376012 var363!2)) ; Statement: $i1 = r0.<org.apache.ibatis.javassist.bytecode.stackmap.TypedBlock: int numLocals> 
(define-const var662 (Array Int var187) (localsTypes/2041376012 var363!2)) ; Statement: $r3 = r0.<org.apache.ibatis.javassist.bytecode.stackmap.TypedBlock: org.apache.ibatis.javassist.bytecode.stackmap.TypeData[] localsTypes> 
(assert true)
;(assert (printTypes/31537845 var363!2 var2876!4 var2749 var662)) ; Statement: specialinvoke r0.<org.apache.ibatis.javassist.bytecode.stackmap.TypedBlock: void printTypes(java.lang.StringBuilder,int,org.apache.ibatis.javassist.bytecode.stackmap.TypeData[])>(r1, $i1, $r3) 

(declare-const var363!3 var1200)
(declare-const var2876!5 String)
(declare-const var2749!1 Int)
(declare-const var662!1 (Array Int var187))
(assert true)
;(assert (append/-1166366385 var2876!5 125)) ; Statement: virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125) 
(declare-const var2876!6 String)
(assert (str.prefixof var2876!5 var2876!6))
 ; Statement: return 
(check-sat)
(get-model)
(get-unsat-core)
; {toString2/978461031=([org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock, java.lang.StringBuilder], void), cast-from-var1200-to-var611=([org.apache.ibatis.javassist.bytecode.stackmap.TypedBlock], org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock), append/672562846=([java.lang.StringBuilder, java.lang.String], java.lang.StringBuilder), stackTop/2041376012=([org.apache.ibatis.javassist.bytecode.stackmap.TypedBlock], int), stackTypes/2041376012=([org.apache.ibatis.javassist.bytecode.stackmap.TypedBlock], org.apache.ibatis.javassist.bytecode.stackmap.TypeData[]), printTypes/31537845=([org.apache.ibatis.javassist.bytecode.stackmap.TypedBlock, java.lang.StringBuilder, int, org.apache.ibatis.javassist.bytecode.stackmap.TypeData[]], void), numLocals/2041376012=([org.apache.ibatis.javassist.bytecode.stackmap.TypedBlock], int), localsTypes/2041376012=([org.apache.ibatis.javassist.bytecode.stackmap.TypedBlock], org.apache.ibatis.javassist.bytecode.stackmap.TypeData[]), append/-1166366385=([java.lang.StringBuilder, char], java.lang.StringBuilder)}
; {var1200=org.apache.ibatis.javassist.bytecode.stackmap.TypedBlock, var363=r0, var2876=r1, var611=org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock, var824=$i0, var187=org.apache.ibatis.javassist.bytecode.stackmap.TypeData, var2157=$r2, var2749=$i1, var662=$r3}
; {org.apache.ibatis.javassist.bytecode.stackmap.TypedBlock=var1200, r0=var363, r1=var2876, org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock=var611, $i0=var824, org.apache.ibatis.javassist.bytecode.stackmap.TypeData=var187, $r2=var2157, $i1=var2749, $r3=var662}
;seq <org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock: void toString2(java.lang.StringBuilder)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>;	<java.lang.StringBuilder: java.lang.StringBuilder append(char)>
;cnt {"<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>": 2,"<java.lang.StringBuilder: java.lang.StringBuilder append(char)>": 1}
;stmts r0 := @this: org.apache.ibatis.javassist.bytecode.stackmap.TypedBlock;	r1 := @parameter0: java.lang.StringBuilder;	specialinvoke r0.<org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock: void toString2(java.lang.StringBuilder)>(r1);	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>(",\n stack={");	$i0 = r0.<org.apache.ibatis.javassist.bytecode.stackmap.TypedBlock: int stackTop>;	$r2 = r0.<org.apache.ibatis.javassist.bytecode.stackmap.TypedBlock: org.apache.ibatis.javassist.bytecode.stackmap.TypeData[] stackTypes>;	specialinvoke r0.<org.apache.ibatis.javassist.bytecode.stackmap.TypedBlock: void printTypes(java.lang.StringBuilder,int,org.apache.ibatis.javassist.bytecode.stackmap.TypeData[])>(r1, $i0, $r2);	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(java.lang.String)>("}, locals={");	$i1 = r0.<org.apache.ibatis.javassist.bytecode.stackmap.TypedBlock: int numLocals>;	$r3 = r0.<org.apache.ibatis.javassist.bytecode.stackmap.TypedBlock: org.apache.ibatis.javassist.bytecode.stackmap.TypeData[] localsTypes>;	specialinvoke r0.<org.apache.ibatis.javassist.bytecode.stackmap.TypedBlock: void printTypes(java.lang.StringBuilder,int,org.apache.ibatis.javassist.bytecode.stackmap.TypeData[])>(r1, $i1, $r3);	virtualinvoke r1.<java.lang.StringBuilder: java.lang.StringBuilder append(char)>(125);	return
;block_num 1