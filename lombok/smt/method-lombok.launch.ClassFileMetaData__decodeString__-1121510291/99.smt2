(set-option :produce-unsat-cores true) ; enable generation of unsat cores
(set-option :produce-models true) ; enable model generation
(set-logic ALL)
(declare-sort var1007 0)
(declare-sort void 0)
(declare-sort Iterator 0)
(declare-sort ClassObject 0)
(declare-fun arr-Int-init () (Array Int Int))
(declare-fun String-init () String)
(declare-fun <init>/-253222812 (String (Array Int Int) Int Int) void)
(declare-const null-var1007 var1007)
(declare-const null-Int Int)
(declare-const var540 var1007) ; Statement: r1 := @this: lombok.launch.ClassFileMetaData 
(assert (not (= var540 null-var1007)))
(declare-const var176 Int) ; Statement: i23 := @parameter0: int 
(assert (not (= var176 null-Int)))
(declare-const var3074 Int) ; Statement: i0 := @parameter1: int 
(assert (not (= var3074 null-Int)))
(define-const var3878 Int (+ var176 var3074)) ; Statement: i1 = i23 + i0 
(define-const var2554 (Array Int Int) arr-Int-init) ; Statement: r0 = newarray (char)[i0] 
(define-const var1285 Int 0) ; Statement: i24 = 0 
 ; Statement: goto [?= (branch)] 
(assert true) ; Non Conditional
 ; Statement: if i23 < i1 goto $r2 = r1.<lombok.launch.ClassFileMetaData: byte[] byteCode> 
(assert (not (< var176 var3878))) ; Negate: Cond: i23 < i1  
(define-const var1948 String String-init) ; Statement: $r7 = new java.lang.String 
(assert true)
;(assert (<init>/-253222812 var1948 var2554 0 var1285)) ; Statement: specialinvoke $r7.<java.lang.String: void <init>(char[],int,int)>(r0, 0, i24) 

(declare-const var1948!1 String)
(declare-const var2554!1 (Array Int Int))
(declare-const var3895 Int)
(declare-const var1285!1 Int)
 ; Statement: return $r7 
(check-sat)
(get-model)
(get-unsat-core)
; {arr-Int-init=([], char[]), String-init=([], java.lang.String), <init>/-253222812=([java.lang.String, char[], int, int], void)}
; {var1007=lombok.launch.ClassFileMetaData, var540=r1, var176=i23, var3074=i0, var3878=i1, var2554=r0, var1285=i24, var1948=$r7, var3895=0}
; {lombok.launch.ClassFileMetaData=var1007, r1=var540, i23=var176, i0=var3074, i1=var3878, r0=var2554, i24=var1285, $r7=var1948, 0=var3895}
;seq <java.lang.String: void <init>(char[],int,int)>
;cnt {"<java.lang.String: void <init>(char[],int,int)>": 1}
;stmts r1 := @this: lombok.launch.ClassFileMetaData;	i23 := @parameter0: int;	i0 := @parameter1: int;	i1 = i23 + i0;	r0 = newarray (char)[i0];	i24 = 0;	goto [?= (branch)];	if i23 < i1 goto $r2 = r1.<lombok.launch.ClassFileMetaData: byte[] byteCode>;	$r7 = new java.lang.String;	specialinvoke $r7.<java.lang.String: void <init>(char[],int,int)>(r0, 0, i24);	return $r7
;block_num 3