??
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
?
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
\
	LeakyRelu
features"T
activations"T"
alphafloat%??L>"
Ttype0:
2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.9.12v2.9.0-18-gd8ce9f9c3018??
?
conv2d_transpose_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameconv2d_transpose_3/bias

+conv2d_transpose_3/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_3/bias*
_output_shapes
:*
dtype0
?
conv2d_transpose_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameconv2d_transpose_3/kernel
?
-conv2d_transpose_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_3/kernel*&
_output_shapes
:*
dtype0
?
*sync_batch_normalization_3/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*;
shared_name,*sync_batch_normalization_3/moving_variance
?
>sync_batch_normalization_3/moving_variance/Read/ReadVariableOpReadVariableOp*sync_batch_normalization_3/moving_variance*
_output_shapes
:*
dtype0
?
&sync_batch_normalization_3/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&sync_batch_normalization_3/moving_mean
?
:sync_batch_normalization_3/moving_mean/Read/ReadVariableOpReadVariableOp&sync_batch_normalization_3/moving_mean*
_output_shapes
:*
dtype0
?
sync_batch_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!sync_batch_normalization_3/beta
?
3sync_batch_normalization_3/beta/Read/ReadVariableOpReadVariableOpsync_batch_normalization_3/beta*
_output_shapes
:*
dtype0
?
 sync_batch_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" sync_batch_normalization_3/gamma
?
4sync_batch_normalization_3/gamma/Read/ReadVariableOpReadVariableOp sync_batch_normalization_3/gamma*
_output_shapes
:*
dtype0
?
conv2d_transpose_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_nameconv2d_transpose_2/bias

+conv2d_transpose_2/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_2/bias*
_output_shapes
:*
dtype0
?
conv2d_transpose_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:Q**
shared_nameconv2d_transpose_2/kernel
?
-conv2d_transpose_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_2/kernel*&
_output_shapes
:Q*
dtype0
?
*sync_batch_normalization_2/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:Q*;
shared_name,*sync_batch_normalization_2/moving_variance
?
>sync_batch_normalization_2/moving_variance/Read/ReadVariableOpReadVariableOp*sync_batch_normalization_2/moving_variance*
_output_shapes
:Q*
dtype0
?
&sync_batch_normalization_2/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:Q*7
shared_name(&sync_batch_normalization_2/moving_mean
?
:sync_batch_normalization_2/moving_mean/Read/ReadVariableOpReadVariableOp&sync_batch_normalization_2/moving_mean*
_output_shapes
:Q*
dtype0
?
sync_batch_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:Q*0
shared_name!sync_batch_normalization_2/beta
?
3sync_batch_normalization_2/beta/Read/ReadVariableOpReadVariableOpsync_batch_normalization_2/beta*
_output_shapes
:Q*
dtype0
?
 sync_batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:Q*1
shared_name" sync_batch_normalization_2/gamma
?
4sync_batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOp sync_batch_normalization_2/gamma*
_output_shapes
:Q*
dtype0
?
conv2d_transpose_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:Q*(
shared_nameconv2d_transpose_1/bias

+conv2d_transpose_1/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_1/bias*
_output_shapes
:Q*
dtype0
?
conv2d_transpose_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:		Q?**
shared_nameconv2d_transpose_1/kernel
?
-conv2d_transpose_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_1/kernel*'
_output_shapes
:		Q?*
dtype0
?
*sync_batch_normalization_1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*;
shared_name,*sync_batch_normalization_1/moving_variance
?
>sync_batch_normalization_1/moving_variance/Read/ReadVariableOpReadVariableOp*sync_batch_normalization_1/moving_variance*
_output_shapes	
:?*
dtype0
?
&sync_batch_normalization_1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*7
shared_name(&sync_batch_normalization_1/moving_mean
?
:sync_batch_normalization_1/moving_mean/Read/ReadVariableOpReadVariableOp&sync_batch_normalization_1/moving_mean*
_output_shapes	
:?*
dtype0
?
sync_batch_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*0
shared_name!sync_batch_normalization_1/beta
?
3sync_batch_normalization_1/beta/Read/ReadVariableOpReadVariableOpsync_batch_normalization_1/beta*
_output_shapes	
:?*
dtype0
?
 sync_batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*1
shared_name" sync_batch_normalization_1/gamma
?
4sync_batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOp sync_batch_normalization_1/gamma*
_output_shapes	
:?*
dtype0
?
conv2d_transpose/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*&
shared_nameconv2d_transpose/bias
|
)conv2d_transpose/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose/bias*
_output_shapes	
:?*
dtype0
?
conv2d_transpose/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:		??*(
shared_nameconv2d_transpose/kernel
?
+conv2d_transpose/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose/kernel*(
_output_shapes
:		??*
dtype0
?
(sync_batch_normalization/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?[*9
shared_name*(sync_batch_normalization/moving_variance
?
<sync_batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp(sync_batch_normalization/moving_variance*
_output_shapes	
:?[*
dtype0
?
$sync_batch_normalization/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?[*5
shared_name&$sync_batch_normalization/moving_mean
?
8sync_batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOp$sync_batch_normalization/moving_mean*
_output_shapes	
:?[*
dtype0
?
sync_batch_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?[*.
shared_namesync_batch_normalization/beta
?
1sync_batch_normalization/beta/Read/ReadVariableOpReadVariableOpsync_batch_normalization/beta*
_output_shapes	
:?[*
dtype0
?
sync_batch_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?[*/
shared_name sync_batch_normalization/gamma
?
2sync_batch_normalization/gamma/Read/ReadVariableOpReadVariableOpsync_batch_normalization/gamma*
_output_shapes	
:?[*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?[*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:?[*
dtype0
v
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
??[*
shared_namedense/kernel
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
??[*
dtype0

NoOpNoOp
?w
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?w
value?vB?v B?v
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer-7
	layer-8

layer_with_weights-4

layer-9
layer_with_weights-5
layer-10
layer-11
layer-12
layer_with_weights-6
layer-13
layer_with_weights-7
layer-14
layer-15
layer-16
layer_with_weights-8
layer-17
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses

!kernel
"bias*
?
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses
)axis
	*gamma
+beta
,moving_mean
-moving_variance*
?
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses* 
?
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses
:_random_generator* 
?
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses* 
?
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses

Gkernel
Hbias
 I_jit_compiled_convolution_op*
?
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses
Paxis
	Qgamma
Rbeta
Smoving_mean
Tmoving_variance*
?
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses* 
?
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses
a_random_generator* 
?
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses

hkernel
ibias
 j_jit_compiled_convolution_op*
?
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses
qaxis
	rgamma
sbeta
tmoving_mean
umoving_variance*
?
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
z__call__
*{&call_and_return_all_conditional_losses* 
?
|	variables
}trainable_variables
~regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?_random_generator* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?kernel
	?bias
!?_jit_compiled_convolution_op*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
	?axis

?gamma
	?beta
?moving_mean
?moving_variance*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?_random_generator* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?kernel
	?bias
!?_jit_compiled_convolution_op*
?
!0
"1
*2
+3
,4
-5
G6
H7
Q8
R9
S10
T11
h12
i13
r14
s15
t16
u17
?18
?19
?20
?21
?22
?23
?24
?25*
?
!0
"1
*2
+3
G4
H5
Q6
R7
h8
i9
r10
s11
?12
?13
?14
?15
?16
?17*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
?trace_0
?trace_1
?trace_2
?trace_3* 
:
?trace_0
?trace_1
?trace_2
?trace_3* 
* 

?serving_default* 

!0
"1*

!0
"1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
 
*0
+1
,2
-3*

*0
+1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses*

?trace_0
?trace_1* 

?trace_0
?trace_1* 
* 
mg
VARIABLE_VALUEsync_batch_normalization/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUEsync_batch_normalization/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE*
ys
VARIABLE_VALUE$sync_batch_normalization/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUE(sync_batch_normalization/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses* 

?trace_0
?trace_1* 

?trace_0
?trace_1* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 

G0
H1*

G0
H1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
ga
VARIABLE_VALUEconv2d_transpose/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEconv2d_transpose/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
Q0
R1
S2
T3*

Q0
R1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses*

?trace_0
?trace_1* 

?trace_0
?trace_1* 
* 
oi
VARIABLE_VALUE sync_batch_normalization_1/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUEsync_batch_normalization_1/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUE&sync_batch_normalization_1/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUE*sync_batch_normalization_1/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses* 

?trace_0
?trace_1* 

?trace_0
?trace_1* 
* 

h0
i1*

h0
i1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
ic
VARIABLE_VALUEconv2d_transpose_1/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEconv2d_transpose_1/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
 
r0
s1
t2
u3*

r0
s1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses*

?trace_0
?trace_1* 

?trace_0
?trace_1* 
* 
oi
VARIABLE_VALUE sync_batch_normalization_2/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUEsync_batch_normalization_2/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUE&sync_batch_normalization_2/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUE*sync_batch_normalization_2/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
v	variables
wtrainable_variables
xregularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
|	variables
}trainable_variables
~regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 

?trace_0
?trace_1* 

?trace_0
?trace_1* 
* 

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
ic
VARIABLE_VALUEconv2d_transpose_2/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEconv2d_transpose_2/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
$
?0
?1
?2
?3*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0
?trace_1* 

?trace_0
?trace_1* 
* 
oi
VARIABLE_VALUE sync_batch_normalization_3/gamma5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUEsync_batch_normalization_3/beta4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUE&sync_batch_normalization_3/moving_mean;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUE*
?}
VARIABLE_VALUE*sync_batch_normalization_3/moving_variance?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 

?trace_0* 

?trace_0* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 

?trace_0
?trace_1* 

?trace_0
?trace_1* 
* 

?0
?1*

?0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*

?trace_0* 

?trace_0* 
ic
VARIABLE_VALUEconv2d_transpose_3/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUEconv2d_transpose_3/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
>
,0
-1
S2
T3
t4
u5
?6
?7*
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

,0
-1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

S0
T1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

t0
u1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

?0
?1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
?
serving_default_dense_inputPlaceholder*(
_output_shapes
:??????????*
dtype0*
shape:??????????
?	
StatefulPartitionedCallStatefulPartitionedCallserving_default_dense_inputdense/kernel
dense/bias(sync_batch_normalization/moving_variancesync_batch_normalization/gamma$sync_batch_normalization/moving_meansync_batch_normalization/betaconv2d_transpose/kernelconv2d_transpose/bias*sync_batch_normalization_1/moving_variance sync_batch_normalization_1/gamma&sync_batch_normalization_1/moving_meansync_batch_normalization_1/betaconv2d_transpose_1/kernelconv2d_transpose_1/bias*sync_batch_normalization_2/moving_variance sync_batch_normalization_2/gamma&sync_batch_normalization_2/moving_meansync_batch_normalization_2/betaconv2d_transpose_2/kernelconv2d_transpose_2/bias*sync_batch_normalization_3/moving_variance sync_batch_normalization_3/gamma&sync_batch_normalization_3/moving_meansync_batch_normalization_3/betaconv2d_transpose_3/kernelconv2d_transpose_3/bias*&
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*<
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8? *,
f'R%
#__inference_signature_wrapper_44059
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp2sync_batch_normalization/gamma/Read/ReadVariableOp1sync_batch_normalization/beta/Read/ReadVariableOp8sync_batch_normalization/moving_mean/Read/ReadVariableOp<sync_batch_normalization/moving_variance/Read/ReadVariableOp+conv2d_transpose/kernel/Read/ReadVariableOp)conv2d_transpose/bias/Read/ReadVariableOp4sync_batch_normalization_1/gamma/Read/ReadVariableOp3sync_batch_normalization_1/beta/Read/ReadVariableOp:sync_batch_normalization_1/moving_mean/Read/ReadVariableOp>sync_batch_normalization_1/moving_variance/Read/ReadVariableOp-conv2d_transpose_1/kernel/Read/ReadVariableOp+conv2d_transpose_1/bias/Read/ReadVariableOp4sync_batch_normalization_2/gamma/Read/ReadVariableOp3sync_batch_normalization_2/beta/Read/ReadVariableOp:sync_batch_normalization_2/moving_mean/Read/ReadVariableOp>sync_batch_normalization_2/moving_variance/Read/ReadVariableOp-conv2d_transpose_2/kernel/Read/ReadVariableOp+conv2d_transpose_2/bias/Read/ReadVariableOp4sync_batch_normalization_3/gamma/Read/ReadVariableOp3sync_batch_normalization_3/beta/Read/ReadVariableOp:sync_batch_normalization_3/moving_mean/Read/ReadVariableOp>sync_batch_normalization_3/moving_variance/Read/ReadVariableOp-conv2d_transpose_3/kernel/Read/ReadVariableOp+conv2d_transpose_3/bias/Read/ReadVariableOpConst*'
Tin 
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *'
f"R 
__inference__traced_save_46029
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense/kernel
dense/biassync_batch_normalization/gammasync_batch_normalization/beta$sync_batch_normalization/moving_mean(sync_batch_normalization/moving_varianceconv2d_transpose/kernelconv2d_transpose/bias sync_batch_normalization_1/gammasync_batch_normalization_1/beta&sync_batch_normalization_1/moving_mean*sync_batch_normalization_1/moving_varianceconv2d_transpose_1/kernelconv2d_transpose_1/bias sync_batch_normalization_2/gammasync_batch_normalization_2/beta&sync_batch_normalization_2/moving_mean*sync_batch_normalization_2/moving_varianceconv2d_transpose_2/kernelconv2d_transpose_2/bias sync_batch_normalization_3/gammasync_batch_normalization_3/beta&sync_batch_normalization_3/moving_mean*sync_batch_normalization_3/moving_varianceconv2d_transpose_3/kernelconv2d_transpose_3/bias*&
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? **
f%R#
!__inference__traced_restore_46117??
?9
?
S__inference_sync_batch_normalization_layer_call_and_return_conditional_losses_44872

inputs6
'assignmovingavg_readvariableop_resource:	?[8
)assignmovingavg_1_readvariableop_resource:	?[4
%batchnorm_mul_readvariableop_resource:	?[0
!batchnorm_readvariableop_resource:	?[
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOpg
moments/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: }
moments/SumSuminputs&moments/Sum/reduction_indices:output:0*
T0*
_output_shapes
:	?[*
	keep_dims(S
moments/SquareSquareinputs*
T0*(
_output_shapes
:??????????[i
moments/Sum_1/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
moments/Sum_1Summoments/Square:y:0(moments/Sum_1/reduction_indices:output:0*
T0*
_output_shapes
:	?[*
	keep_dims(C
moments/ShapeShapeinputs*
T0*
_output_shapes
:e
moments/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
moments/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
moments/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
moments/strided_sliceStridedSlicemoments/Shape:output:0$moments/strided_slice/stack:output:0&moments/strided_slice/stack_1:output:0&moments/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
moments/CastCastmoments/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: \
moments/IdentityIdentitymoments/Sum:output:0*
T0*
_output_shapes
:	?[?
moments/IdentityN	IdentityNmoments/Sum:output:0moments/Sum:output:0*
T
2*+
_gradient_op_typeCustomGradient-44823**
_output_shapes
:	?[:	?[`
moments/Identity_1Identitymoments/Sum_1:output:0*
T0*
_output_shapes
:	?[?
moments/IdentityN_1	IdentityNmoments/Sum_1:output:0moments/Sum_1:output:0*
T
2*+
_gradient_op_typeCustomGradient-44827**
_output_shapes
:	?[:	?[Q
moments/Identity_2Identitymoments/Cast:y:0*
T0*
_output_shapes
: ?
moments/IdentityN_2	IdentityNmoments/Cast:y:0moments/Cast:y:0*
T
2*+
_gradient_op_typeCustomGradient-44831*
_output_shapes
: : U
moments/Rank/ConstConst*
_output_shapes
: *
dtype0*
valueB N
moments/RankConst*
_output_shapes
: *
dtype0*
value	B :U
moments/range/startConst*
_output_shapes
: *
dtype0*
value	B : U
moments/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :?
moments/rangeRangemoments/range/start:output:0moments/Rank:output:0moments/range/delta:output:0*
_output_shapes
:U
moments/Prod/inputConst*
_output_shapes
: *
dtype0*
valueB j
moments/ProdProdmoments/Prod/input:output:0moments/range:output:0*
T0*
_output_shapes
: h
moments/mulMulmoments/Prod:output:0moments/IdentityN_2:output:0*
T0*
_output_shapes
: q
moments/truedivRealDivmoments/IdentityN:output:0moments/mul:z:0*
T0*
_output_shapes
:	?[u
moments/truediv_1RealDivmoments/IdentityN_1:output:0moments/mul:z:0*
T0*
_output_shapes
:	?[Y
moments/Square_1Squaremoments/truediv:z:0*
T0*
_output_shapes
:	?[i
moments/subSubmoments/truediv_1:z:0moments/Square_1:y:0*
T0*
_output_shapes
:	?[l
moments/SqueezeSqueezemoments/truediv:z:0*
T0*
_output_shapes	
:?[*
squeeze_dims
 j
moments/Squeeze_1Squeezemoments/sub:z:0*
T0*
_output_shapes	
:?[*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:?[*
dtype0?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?[y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?[?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?[*
dtype0?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?[
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?[?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?[Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?[
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?[*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?[d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????[i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?[w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?[*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?[s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????[c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:??????????[?
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????[: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????[
 
_user_specified_nameinputs
?
?
*__inference_sequential_layer_call_fn_44116

inputs
unknown:
??[
	unknown_0:	?[
	unknown_1:	?[
	unknown_2:	?[
	unknown_3:	?[
	unknown_4:	?[%
	unknown_5:		??
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?
	unknown_9:	?

unknown_10:	?%

unknown_11:		Q?

unknown_12:Q

unknown_13:Q

unknown_14:Q

unknown_15:Q

unknown_16:Q$

unknown_17:Q

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:$

unknown_23:

unknown_24:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*<
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_43420w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
\
"__inference_internal_grad_fn_45904
result_grads_0
result_grads_1

identity_1V
IdentityIdentityresult_grads_0*
T0*'
_output_shapes
:??
	IdentityN	IdentityNresult_grads_0result_grads_0*
T
2*+
_gradient_op_typeCustomGradient-45899*:
_output_shapes(
&:?:?\

Identity_1IdentityIdentityN:output:0*
T0*'
_output_shapes
:?"!

identity_1Identity_1:output:0*9
_input_shapes(
&:?:?:W S
'
_output_shapes
:?
(
_user_specified_nameresult_grads_0:WS
'
_output_shapes
:?
(
_user_specified_nameresult_grads_1
?
\
"__inference_internal_grad_fn_45834
result_grads_0
result_grads_1

identity_1E
IdentityIdentityresult_grads_0*
T0*
_output_shapes
: ?
	IdentityN	IdentityNresult_grads_0result_grads_0*
T
2*+
_gradient_op_typeCustomGradient-45829*
_output_shapes
: : K

Identity_1IdentityIdentityN:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0*
_input_shapes
: : :F B

_output_shapes
: 
(
_user_specified_nameresult_grads_0:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_1
?G
?
U__inference_sync_batch_normalization_1_layer_call_and_return_conditional_losses_45090

inputs6
'assignmovingavg_readvariableop_resource:	?8
)assignmovingavg_1_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?0
!batchnorm_readvariableop_resource:	?
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOpr
moments/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          ?
moments/SumSuminputs&moments/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?*
	keep_dims(m
moments/SquareSquareinputs*
T0*B
_output_shapes0
.:,????????????????????????????t
moments/Sum_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          ?
moments/Sum_1Summoments/Square:y:0(moments/Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:?*
	keep_dims(C
moments/ShapeShapeinputs*
T0*
_output_shapes
:e
moments/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
moments/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
moments/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
moments/strided_sliceStridedSlicemoments/Shape:output:0$moments/strided_slice/stack:output:0&moments/strided_slice/stack_1:output:0&moments/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
moments/CastCastmoments/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: d
moments/IdentityIdentitymoments/Sum:output:0*
T0*'
_output_shapes
:??
moments/IdentityN	IdentityNmoments/Sum:output:0moments/Sum:output:0*
T
2*+
_gradient_op_typeCustomGradient-45030*:
_output_shapes(
&:?:?h
moments/Identity_1Identitymoments/Sum_1:output:0*
T0*'
_output_shapes
:??
moments/IdentityN_1	IdentityNmoments/Sum_1:output:0moments/Sum_1:output:0*
T
2*+
_gradient_op_typeCustomGradient-45034*:
_output_shapes(
&:?:?Q
moments/Identity_2Identitymoments/Cast:y:0*
T0*
_output_shapes
: ?
moments/IdentityN_2	IdentityNmoments/Cast:y:0moments/Cast:y:0*
T
2*+
_gradient_op_typeCustomGradient-45038*
_output_shapes
: : E
moments/Shape_1Shapeinputs*
T0*
_output_shapes
:g
moments/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:i
moments/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
moments/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
moments/strided_slice_1StridedSlicemoments/Shape_1:output:0&moments/strided_slice_1/stack:output:0(moments/strided_slice_1/stack_1:output:0(moments/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskE
moments/Shape_2Shapeinputs*
T0*
_output_shapes
:g
moments/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:i
moments/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
moments/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
moments/strided_slice_2StridedSlicemoments/Shape_2:output:0&moments/strided_slice_2/stack:output:0(moments/strided_slice_2/stack_1:output:0(moments/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
moments/Rank/packedPack moments/strided_slice_1:output:0 moments/strided_slice_2:output:0*
N*
T0*
_output_shapes
:N
moments/RankConst*
_output_shapes
: *
dtype0*
value	B :U
moments/range/startConst*
_output_shapes
: *
dtype0*
value	B : U
moments/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :?
moments/rangeRangemoments/range/start:output:0moments/Rank:output:0moments/range/delta:output:0*
_output_shapes
:?
moments/Prod/inputPack moments/strided_slice_1:output:0 moments/strided_slice_2:output:0*
N*
T0*
_output_shapes
:j
moments/ProdProdmoments/Prod/input:output:0moments/range:output:0*
T0*
_output_shapes
: ]
moments/Cast_1Castmoments/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: e
moments/mulMulmoments/Cast_1:y:0moments/IdentityN_2:output:0*
T0*
_output_shapes
: y
moments/truedivRealDivmoments/IdentityN:output:0moments/mul:z:0*
T0*'
_output_shapes
:?}
moments/truediv_1RealDivmoments/IdentityN_1:output:0moments/mul:z:0*
T0*'
_output_shapes
:?a
moments/Square_1Squaremoments/truediv:z:0*
T0*'
_output_shapes
:?q
moments/subSubmoments/truediv_1:z:0moments/Square_1:y:0*
T0*'
_output_shapes
:?n
moments/SqueezeSqueezemoments/truediv:z:0*
T0*
_output_shapes	
:?*
squeeze_dims
 l
moments/Squeeze_1Squeezemoments/sub:z:0*
T0*
_output_shapes	
:?*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype0?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:??
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype0?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:??
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?~
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*B
_output_shapes0
.:,????????????????????????????i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:??
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*B
_output_shapes0
.:,????????????????????????????}
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?

c
D__inference_dropout_1_layer_call_and_return_conditional_losses_45127

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *???m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??u<?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????x
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????r
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:??????????b
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
\
"__inference_internal_grad_fn_45774
result_grads_0
result_grads_1

identity_1E
IdentityIdentityresult_grads_0*
T0*
_output_shapes
: ?
	IdentityN	IdentityNresult_grads_0result_grads_0*
T
2*+
_gradient_op_typeCustomGradient-45769*
_output_shapes
: : K

Identity_1IdentityIdentityN:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0*
_input_shapes
: : :F B

_output_shapes
: 
(
_user_specified_nameresult_grads_0:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_1
?
\
"__inference_internal_grad_fn_45944
result_grads_0
result_grads_1

identity_1U
IdentityIdentityresult_grads_0*
T0*&
_output_shapes
:Q?
	IdentityN	IdentityNresult_grads_0result_grads_0*
T
2*+
_gradient_op_typeCustomGradient-45939*8
_output_shapes&
$:Q:Q[

Identity_1IdentityIdentityN:output:0*
T0*&
_output_shapes
:Q"!

identity_1Identity_1:output:0*7
_input_shapes&
$:Q:Q:V R
&
_output_shapes
:Q
(
_user_specified_nameresult_grads_0:VR
&
_output_shapes
:Q
(
_user_specified_nameresult_grads_1
?
d
H__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_45100

inputs
identity`
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:??????????*
alpha%???>h
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
U__inference_sync_batch_normalization_2_layer_call_and_return_conditional_losses_45215

inputs/
!batchnorm_readvariableop_resource:Q3
%batchnorm_mul_readvariableop_resource:Q1
#batchnorm_readvariableop_1_resource:Q1
#batchnorm_readvariableop_2_resource:Q
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:Q*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:QP
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:Q~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:Q*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:Q}
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????Qz
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:Q*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:Qz
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:Q*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:Q?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*A
_output_shapes/
-:+???????????????????????????Q|
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????Q?
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????Q: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????Q
 
_user_specified_nameinputs
?
\
"__inference_internal_grad_fn_45794
result_grads_0
result_grads_1

identity_1V
IdentityIdentityresult_grads_0*
T0*'
_output_shapes
:??
	IdentityN	IdentityNresult_grads_0result_grads_0*
T
2*+
_gradient_op_typeCustomGradient-45789*:
_output_shapes(
&:?:?\

Identity_1IdentityIdentityN:output:0*
T0*'
_output_shapes
:?"!

identity_1Identity_1:output:0*9
_input_shapes(
&:?:?:W S
'
_output_shapes
:?
(
_user_specified_nameresult_grads_0:WS
'
_output_shapes
:?
(
_user_specified_nameresult_grads_1
?
\
"__inference_internal_grad_fn_45754
result_grads_0
result_grads_1

identity_1N
IdentityIdentityresult_grads_0*
T0*
_output_shapes
:	?[?
	IdentityN	IdentityNresult_grads_0result_grads_0*
T
2*+
_gradient_op_typeCustomGradient-45749**
_output_shapes
:	?[:	?[T

Identity_1IdentityIdentityN:output:0*
T0*
_output_shapes
:	?["!

identity_1Identity_1:output:0*)
_input_shapes
:	?[:	?[:O K

_output_shapes
:	?[
(
_user_specified_nameresult_grads_0:OK

_output_shapes
:	?[
(
_user_specified_nameresult_grads_1
?
\
"__inference_internal_grad_fn_45714
result_grads_0
result_grads_1

identity_1E
IdentityIdentityresult_grads_0*
T0*
_output_shapes
: ?
	IdentityN	IdentityNresult_grads_0result_grads_0*
T
2*+
_gradient_op_typeCustomGradient-45709*
_output_shapes
: : K

Identity_1IdentityIdentityN:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0*
_input_shapes
: : :F B

_output_shapes
: 
(
_user_specified_nameresult_grads_0:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_1
?
\
"__inference_internal_grad_fn_45664
result_grads_0
result_grads_1

identity_1V
IdentityIdentityresult_grads_0*
T0*'
_output_shapes
:??
	IdentityN	IdentityNresult_grads_0result_grads_0*
T
2*+
_gradient_op_typeCustomGradient-45659*:
_output_shapes(
&:?:?\

Identity_1IdentityIdentityN:output:0*
T0*'
_output_shapes
:?"!

identity_1Identity_1:output:0*9
_input_shapes(
&:?:?:W S
'
_output_shapes
:?
(
_user_specified_nameresult_grads_0:WS
'
_output_shapes
:?
(
_user_specified_nameresult_grads_1
?	
?
:__inference_sync_batch_normalization_2_layer_call_fn_45195

inputs
unknown:Q
	unknown_0:Q
	unknown_1:Q
	unknown_2:Q
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????Q*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *^
fYRW
U__inference_sync_batch_normalization_2_layer_call_and_return_conditional_losses_43046?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????Q`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????Q: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????Q
 
_user_specified_nameinputs
?
b
D__inference_dropout_3_layer_call_and_return_conditional_losses_45513

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????  c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????  "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????  :W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
\
"__inference_internal_grad_fn_45884
result_grads_0
result_grads_1

identity_1N
IdentityIdentityresult_grads_0*
T0*
_output_shapes
:	?[?
	IdentityN	IdentityNresult_grads_0result_grads_0*
T
2*+
_gradient_op_typeCustomGradient-45879**
_output_shapes
:	?[:	?[T

Identity_1IdentityIdentityN:output:0*
T0*
_output_shapes
:	?["!

identity_1Identity_1:output:0*)
_input_shapes
:	?[:	?[:O K

_output_shapes
:	?[
(
_user_specified_nameresult_grads_0:OK

_output_shapes
:	?[
(
_user_specified_nameresult_grads_1
?
?
S__inference_sync_batch_normalization_layer_call_and_return_conditional_losses_42638

inputs0
!batchnorm_readvariableop_resource:	?[4
%batchnorm_mul_readvariableop_resource:	?[2
#batchnorm_readvariableop_1_resource:	?[2
#batchnorm_readvariableop_2_resource:	?[
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?[*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?[Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?[
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?[*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?[d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????[{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?[*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?[{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?[*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?[s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????[c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:??????????[?
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????[: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????[
 
_user_specified_nameinputs
?G
?
U__inference_sync_batch_normalization_1_layer_call_and_return_conditional_losses_42880

inputs6
'assignmovingavg_readvariableop_resource:	?8
)assignmovingavg_1_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?0
!batchnorm_readvariableop_resource:	?
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOpr
moments/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          ?
moments/SumSuminputs&moments/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?*
	keep_dims(m
moments/SquareSquareinputs*
T0*B
_output_shapes0
.:,????????????????????????????t
moments/Sum_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          ?
moments/Sum_1Summoments/Square:y:0(moments/Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:?*
	keep_dims(C
moments/ShapeShapeinputs*
T0*
_output_shapes
:e
moments/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
moments/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
moments/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
moments/strided_sliceStridedSlicemoments/Shape:output:0$moments/strided_slice/stack:output:0&moments/strided_slice/stack_1:output:0&moments/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
moments/CastCastmoments/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: d
moments/IdentityIdentitymoments/Sum:output:0*
T0*'
_output_shapes
:??
moments/IdentityN	IdentityNmoments/Sum:output:0moments/Sum:output:0*
T
2*+
_gradient_op_typeCustomGradient-42820*:
_output_shapes(
&:?:?h
moments/Identity_1Identitymoments/Sum_1:output:0*
T0*'
_output_shapes
:??
moments/IdentityN_1	IdentityNmoments/Sum_1:output:0moments/Sum_1:output:0*
T
2*+
_gradient_op_typeCustomGradient-42824*:
_output_shapes(
&:?:?Q
moments/Identity_2Identitymoments/Cast:y:0*
T0*
_output_shapes
: ?
moments/IdentityN_2	IdentityNmoments/Cast:y:0moments/Cast:y:0*
T
2*+
_gradient_op_typeCustomGradient-42828*
_output_shapes
: : E
moments/Shape_1Shapeinputs*
T0*
_output_shapes
:g
moments/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:i
moments/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
moments/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
moments/strided_slice_1StridedSlicemoments/Shape_1:output:0&moments/strided_slice_1/stack:output:0(moments/strided_slice_1/stack_1:output:0(moments/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskE
moments/Shape_2Shapeinputs*
T0*
_output_shapes
:g
moments/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:i
moments/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
moments/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
moments/strided_slice_2StridedSlicemoments/Shape_2:output:0&moments/strided_slice_2/stack:output:0(moments/strided_slice_2/stack_1:output:0(moments/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
moments/Rank/packedPack moments/strided_slice_1:output:0 moments/strided_slice_2:output:0*
N*
T0*
_output_shapes
:N
moments/RankConst*
_output_shapes
: *
dtype0*
value	B :U
moments/range/startConst*
_output_shapes
: *
dtype0*
value	B : U
moments/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :?
moments/rangeRangemoments/range/start:output:0moments/Rank:output:0moments/range/delta:output:0*
_output_shapes
:?
moments/Prod/inputPack moments/strided_slice_1:output:0 moments/strided_slice_2:output:0*
N*
T0*
_output_shapes
:j
moments/ProdProdmoments/Prod/input:output:0moments/range:output:0*
T0*
_output_shapes
: ]
moments/Cast_1Castmoments/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: e
moments/mulMulmoments/Cast_1:y:0moments/IdentityN_2:output:0*
T0*
_output_shapes
: y
moments/truedivRealDivmoments/IdentityN:output:0moments/mul:z:0*
T0*'
_output_shapes
:?}
moments/truediv_1RealDivmoments/IdentityN_1:output:0moments/mul:z:0*
T0*'
_output_shapes
:?a
moments/Square_1Squaremoments/truediv:z:0*
T0*'
_output_shapes
:?q
moments/subSubmoments/truediv_1:z:0moments/Square_1:y:0*
T0*'
_output_shapes
:?n
moments/SqueezeSqueezemoments/truediv:z:0*
T0*
_output_shapes	
:?*
squeeze_dims
 l
moments/Squeeze_1Squeezemoments/sub:z:0*
T0*
_output_shapes	
:?*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype0?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:??
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype0?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:??
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?~
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*B
_output_shapes0
.:,????????????????????????????i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:??
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*B
_output_shapes0
.:,????????????????????????????}
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
\
"__inference_internal_grad_fn_45764
result_grads_0
result_grads_1

identity_1N
IdentityIdentityresult_grads_0*
T0*
_output_shapes
:	?[?
	IdentityN	IdentityNresult_grads_0result_grads_0*
T
2*+
_gradient_op_typeCustomGradient-45759**
_output_shapes
:	?[:	?[T

Identity_1IdentityIdentityN:output:0*
T0*
_output_shapes
:	?["!

identity_1Identity_1:output:0*)
_input_shapes
:	?[:	?[:O K

_output_shapes
:	?[
(
_user_specified_nameresult_grads_0:OK

_output_shapes
:	?[
(
_user_specified_nameresult_grads_1
?
d
H__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_43405

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:?????????  *
alpha%???>g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:?????????  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????  :W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
? 
?
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_44970

inputsD
(conv2d_transpose_readvariableop_resource:		??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: J
stack/3Const*
_output_shapes
: *
dtype0*
value
B :?y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:		??*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,????????????????????????????*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,????????????????????????????z
IdentityIdentityBiasAdd:output:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,????????????????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
2__inference_conv2d_transpose_2_layer_call_fn_45335

inputs!
unknown:Q
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *V
fQRO
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_43094?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????Q: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????Q
 
_user_specified_nameinputs
??
?
 __inference__wrapped_model_42614
dense_inputC
/sequential_dense_matmul_readvariableop_resource:
??[?
0sequential_dense_biasadd_readvariableop_resource:	?[T
Esequential_sync_batch_normalization_batchnorm_readvariableop_resource:	?[X
Isequential_sync_batch_normalization_batchnorm_mul_readvariableop_resource:	?[V
Gsequential_sync_batch_normalization_batchnorm_readvariableop_1_resource:	?[V
Gsequential_sync_batch_normalization_batchnorm_readvariableop_2_resource:	?[`
Dsequential_conv2d_transpose_conv2d_transpose_readvariableop_resource:		??J
;sequential_conv2d_transpose_biasadd_readvariableop_resource:	?V
Gsequential_sync_batch_normalization_1_batchnorm_readvariableop_resource:	?Z
Ksequential_sync_batch_normalization_1_batchnorm_mul_readvariableop_resource:	?X
Isequential_sync_batch_normalization_1_batchnorm_readvariableop_1_resource:	?X
Isequential_sync_batch_normalization_1_batchnorm_readvariableop_2_resource:	?a
Fsequential_conv2d_transpose_1_conv2d_transpose_readvariableop_resource:		Q?K
=sequential_conv2d_transpose_1_biasadd_readvariableop_resource:QU
Gsequential_sync_batch_normalization_2_batchnorm_readvariableop_resource:QY
Ksequential_sync_batch_normalization_2_batchnorm_mul_readvariableop_resource:QW
Isequential_sync_batch_normalization_2_batchnorm_readvariableop_1_resource:QW
Isequential_sync_batch_normalization_2_batchnorm_readvariableop_2_resource:Q`
Fsequential_conv2d_transpose_2_conv2d_transpose_readvariableop_resource:QK
=sequential_conv2d_transpose_2_biasadd_readvariableop_resource:U
Gsequential_sync_batch_normalization_3_batchnorm_readvariableop_resource:Y
Ksequential_sync_batch_normalization_3_batchnorm_mul_readvariableop_resource:W
Isequential_sync_batch_normalization_3_batchnorm_readvariableop_1_resource:W
Isequential_sync_batch_normalization_3_batchnorm_readvariableop_2_resource:`
Fsequential_conv2d_transpose_3_conv2d_transpose_readvariableop_resource:K
=sequential_conv2d_transpose_3_biasadd_readvariableop_resource:
identity??2sequential/conv2d_transpose/BiasAdd/ReadVariableOp?;sequential/conv2d_transpose/conv2d_transpose/ReadVariableOp?4sequential/conv2d_transpose_1/BiasAdd/ReadVariableOp?=sequential/conv2d_transpose_1/conv2d_transpose/ReadVariableOp?4sequential/conv2d_transpose_2/BiasAdd/ReadVariableOp?=sequential/conv2d_transpose_2/conv2d_transpose/ReadVariableOp?4sequential/conv2d_transpose_3/BiasAdd/ReadVariableOp?=sequential/conv2d_transpose_3/conv2d_transpose/ReadVariableOp?'sequential/dense/BiasAdd/ReadVariableOp?&sequential/dense/MatMul/ReadVariableOp?<sequential/sync_batch_normalization/batchnorm/ReadVariableOp?>sequential/sync_batch_normalization/batchnorm/ReadVariableOp_1?>sequential/sync_batch_normalization/batchnorm/ReadVariableOp_2?@sequential/sync_batch_normalization/batchnorm/mul/ReadVariableOp?>sequential/sync_batch_normalization_1/batchnorm/ReadVariableOp?@sequential/sync_batch_normalization_1/batchnorm/ReadVariableOp_1?@sequential/sync_batch_normalization_1/batchnorm/ReadVariableOp_2?Bsequential/sync_batch_normalization_1/batchnorm/mul/ReadVariableOp?>sequential/sync_batch_normalization_2/batchnorm/ReadVariableOp?@sequential/sync_batch_normalization_2/batchnorm/ReadVariableOp_1?@sequential/sync_batch_normalization_2/batchnorm/ReadVariableOp_2?Bsequential/sync_batch_normalization_2/batchnorm/mul/ReadVariableOp?>sequential/sync_batch_normalization_3/batchnorm/ReadVariableOp?@sequential/sync_batch_normalization_3/batchnorm/ReadVariableOp_1?@sequential/sync_batch_normalization_3/batchnorm/ReadVariableOp_2?Bsequential/sync_batch_normalization_3/batchnorm/mul/ReadVariableOp?
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource* 
_output_shapes
:
??[*
dtype0?
sequential/dense/MatMulMatMuldense_input.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????[?
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:?[*
dtype0?
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????[?
<sequential/sync_batch_normalization/batchnorm/ReadVariableOpReadVariableOpEsequential_sync_batch_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:?[*
dtype0x
3sequential/sync_batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
1sequential/sync_batch_normalization/batchnorm/addAddV2Dsequential/sync_batch_normalization/batchnorm/ReadVariableOp:value:0<sequential/sync_batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?[?
3sequential/sync_batch_normalization/batchnorm/RsqrtRsqrt5sequential/sync_batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes	
:?[?
@sequential/sync_batch_normalization/batchnorm/mul/ReadVariableOpReadVariableOpIsequential_sync_batch_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?[*
dtype0?
1sequential/sync_batch_normalization/batchnorm/mulMul7sequential/sync_batch_normalization/batchnorm/Rsqrt:y:0Hsequential/sync_batch_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?[?
3sequential/sync_batch_normalization/batchnorm/mul_1Mul!sequential/dense/BiasAdd:output:05sequential/sync_batch_normalization/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????[?
>sequential/sync_batch_normalization/batchnorm/ReadVariableOp_1ReadVariableOpGsequential_sync_batch_normalization_batchnorm_readvariableop_1_resource*
_output_shapes	
:?[*
dtype0?
3sequential/sync_batch_normalization/batchnorm/mul_2MulFsequential/sync_batch_normalization/batchnorm/ReadVariableOp_1:value:05sequential/sync_batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes	
:?[?
>sequential/sync_batch_normalization/batchnorm/ReadVariableOp_2ReadVariableOpGsequential_sync_batch_normalization_batchnorm_readvariableop_2_resource*
_output_shapes	
:?[*
dtype0?
1sequential/sync_batch_normalization/batchnorm/subSubFsequential/sync_batch_normalization/batchnorm/ReadVariableOp_2:value:07sequential/sync_batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?[?
3sequential/sync_batch_normalization/batchnorm/add_1AddV27sequential/sync_batch_normalization/batchnorm/mul_1:z:05sequential/sync_batch_normalization/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????[?
 sequential/leaky_re_lu/LeakyRelu	LeakyRelu7sequential/sync_batch_normalization/batchnorm/add_1:z:0*(
_output_shapes
:??????????[*
alpha%???>?
sequential/dropout/IdentityIdentity.sequential/leaky_re_lu/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????[l
sequential/reshape/ShapeShape$sequential/dropout/Identity:output:0*
T0*
_output_shapes
:p
&sequential/reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(sequential/reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(sequential/reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 sequential/reshape/strided_sliceStridedSlice!sequential/reshape/Shape:output:0/sequential/reshape/strided_slice/stack:output:01sequential/reshape/strided_slice/stack_1:output:01sequential/reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"sequential/reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :d
"sequential/reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :e
"sequential/reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :??
 sequential/reshape/Reshape/shapePack)sequential/reshape/strided_slice:output:0+sequential/reshape/Reshape/shape/1:output:0+sequential/reshape/Reshape/shape/2:output:0+sequential/reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
sequential/reshape/ReshapeReshape$sequential/dropout/Identity:output:0)sequential/reshape/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????t
!sequential/conv2d_transpose/ShapeShape#sequential/reshape/Reshape:output:0*
T0*
_output_shapes
:y
/sequential/conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1sequential/conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1sequential/conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)sequential/conv2d_transpose/strided_sliceStridedSlice*sequential/conv2d_transpose/Shape:output:08sequential/conv2d_transpose/strided_slice/stack:output:0:sequential/conv2d_transpose/strided_slice/stack_1:output:0:sequential/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#sequential/conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :e
#sequential/conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B :f
#sequential/conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value
B :??
!sequential/conv2d_transpose/stackPack2sequential/conv2d_transpose/strided_slice:output:0,sequential/conv2d_transpose/stack/1:output:0,sequential/conv2d_transpose/stack/2:output:0,sequential/conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:{
1sequential/conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3sequential/conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3sequential/conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
+sequential/conv2d_transpose/strided_slice_1StridedSlice*sequential/conv2d_transpose/stack:output:0:sequential/conv2d_transpose/strided_slice_1/stack:output:0<sequential/conv2d_transpose/strided_slice_1/stack_1:output:0<sequential/conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
;sequential/conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOpDsequential_conv2d_transpose_conv2d_transpose_readvariableop_resource*(
_output_shapes
:		??*
dtype0?
,sequential/conv2d_transpose/conv2d_transposeConv2DBackpropInput*sequential/conv2d_transpose/stack:output:0Csequential/conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0#sequential/reshape/Reshape:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
2sequential/conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp;sequential_conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
#sequential/conv2d_transpose/BiasAddBiasAdd5sequential/conv2d_transpose/conv2d_transpose:output:0:sequential/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
>sequential/sync_batch_normalization_1/batchnorm/ReadVariableOpReadVariableOpGsequential_sync_batch_normalization_1_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0z
5sequential/sync_batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
3sequential/sync_batch_normalization_1/batchnorm/addAddV2Fsequential/sync_batch_normalization_1/batchnorm/ReadVariableOp:value:0>sequential/sync_batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes	
:??
5sequential/sync_batch_normalization_1/batchnorm/RsqrtRsqrt7sequential/sync_batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes	
:??
Bsequential/sync_batch_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOpKsequential_sync_batch_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0?
3sequential/sync_batch_normalization_1/batchnorm/mulMul9sequential/sync_batch_normalization_1/batchnorm/Rsqrt:y:0Jsequential/sync_batch_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:??
5sequential/sync_batch_normalization_1/batchnorm/mul_1Mul,sequential/conv2d_transpose/BiasAdd:output:07sequential/sync_batch_normalization_1/batchnorm/mul:z:0*
T0*0
_output_shapes
:???????????
@sequential/sync_batch_normalization_1/batchnorm/ReadVariableOp_1ReadVariableOpIsequential_sync_batch_normalization_1_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
5sequential/sync_batch_normalization_1/batchnorm/mul_2MulHsequential/sync_batch_normalization_1/batchnorm/ReadVariableOp_1:value:07sequential/sync_batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes	
:??
@sequential/sync_batch_normalization_1/batchnorm/ReadVariableOp_2ReadVariableOpIsequential_sync_batch_normalization_1_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype0?
3sequential/sync_batch_normalization_1/batchnorm/subSubHsequential/sync_batch_normalization_1/batchnorm/ReadVariableOp_2:value:09sequential/sync_batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:??
5sequential/sync_batch_normalization_1/batchnorm/add_1AddV29sequential/sync_batch_normalization_1/batchnorm/mul_1:z:07sequential/sync_batch_normalization_1/batchnorm/sub:z:0*
T0*0
_output_shapes
:???????????
"sequential/leaky_re_lu_1/LeakyRelu	LeakyRelu9sequential/sync_batch_normalization_1/batchnorm/add_1:z:0*0
_output_shapes
:??????????*
alpha%???>?
sequential/dropout_1/IdentityIdentity0sequential/leaky_re_lu_1/LeakyRelu:activations:0*
T0*0
_output_shapes
:??????????y
#sequential/conv2d_transpose_1/ShapeShape&sequential/dropout_1/Identity:output:0*
T0*
_output_shapes
:{
1sequential/conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3sequential/conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3sequential/conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
+sequential/conv2d_transpose_1/strided_sliceStridedSlice,sequential/conv2d_transpose_1/Shape:output:0:sequential/conv2d_transpose_1/strided_slice/stack:output:0<sequential/conv2d_transpose_1/strided_slice/stack_1:output:0<sequential/conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential/conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :g
%sequential/conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :g
%sequential/conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :Q?
#sequential/conv2d_transpose_1/stackPack4sequential/conv2d_transpose_1/strided_slice:output:0.sequential/conv2d_transpose_1/stack/1:output:0.sequential/conv2d_transpose_1/stack/2:output:0.sequential/conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:}
3sequential/conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5sequential/conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5sequential/conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
-sequential/conv2d_transpose_1/strided_slice_1StridedSlice,sequential/conv2d_transpose_1/stack:output:0<sequential/conv2d_transpose_1/strided_slice_1/stack:output:0>sequential/conv2d_transpose_1/strided_slice_1/stack_1:output:0>sequential/conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
=sequential/conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOpFsequential_conv2d_transpose_1_conv2d_transpose_readvariableop_resource*'
_output_shapes
:		Q?*
dtype0?
.sequential/conv2d_transpose_1/conv2d_transposeConv2DBackpropInput,sequential/conv2d_transpose_1/stack:output:0Esequential/conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0&sequential/dropout_1/Identity:output:0*
T0*/
_output_shapes
:?????????Q*
paddingSAME*
strides
?
4sequential/conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp=sequential_conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes
:Q*
dtype0?
%sequential/conv2d_transpose_1/BiasAddBiasAdd7sequential/conv2d_transpose_1/conv2d_transpose:output:0<sequential/conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Q?
>sequential/sync_batch_normalization_2/batchnorm/ReadVariableOpReadVariableOpGsequential_sync_batch_normalization_2_batchnorm_readvariableop_resource*
_output_shapes
:Q*
dtype0z
5sequential/sync_batch_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
3sequential/sync_batch_normalization_2/batchnorm/addAddV2Fsequential/sync_batch_normalization_2/batchnorm/ReadVariableOp:value:0>sequential/sync_batch_normalization_2/batchnorm/add/y:output:0*
T0*
_output_shapes
:Q?
5sequential/sync_batch_normalization_2/batchnorm/RsqrtRsqrt7sequential/sync_batch_normalization_2/batchnorm/add:z:0*
T0*
_output_shapes
:Q?
Bsequential/sync_batch_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOpKsequential_sync_batch_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes
:Q*
dtype0?
3sequential/sync_batch_normalization_2/batchnorm/mulMul9sequential/sync_batch_normalization_2/batchnorm/Rsqrt:y:0Jsequential/sync_batch_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:Q?
5sequential/sync_batch_normalization_2/batchnorm/mul_1Mul.sequential/conv2d_transpose_1/BiasAdd:output:07sequential/sync_batch_normalization_2/batchnorm/mul:z:0*
T0*/
_output_shapes
:?????????Q?
@sequential/sync_batch_normalization_2/batchnorm/ReadVariableOp_1ReadVariableOpIsequential_sync_batch_normalization_2_batchnorm_readvariableop_1_resource*
_output_shapes
:Q*
dtype0?
5sequential/sync_batch_normalization_2/batchnorm/mul_2MulHsequential/sync_batch_normalization_2/batchnorm/ReadVariableOp_1:value:07sequential/sync_batch_normalization_2/batchnorm/mul:z:0*
T0*
_output_shapes
:Q?
@sequential/sync_batch_normalization_2/batchnorm/ReadVariableOp_2ReadVariableOpIsequential_sync_batch_normalization_2_batchnorm_readvariableop_2_resource*
_output_shapes
:Q*
dtype0?
3sequential/sync_batch_normalization_2/batchnorm/subSubHsequential/sync_batch_normalization_2/batchnorm/ReadVariableOp_2:value:09sequential/sync_batch_normalization_2/batchnorm/mul_2:z:0*
T0*
_output_shapes
:Q?
5sequential/sync_batch_normalization_2/batchnorm/add_1AddV29sequential/sync_batch_normalization_2/batchnorm/mul_1:z:07sequential/sync_batch_normalization_2/batchnorm/sub:z:0*
T0*/
_output_shapes
:?????????Q?
"sequential/leaky_re_lu_2/LeakyRelu	LeakyRelu9sequential/sync_batch_normalization_2/batchnorm/add_1:z:0*/
_output_shapes
:?????????Q*
alpha%???>?
sequential/dropout_2/IdentityIdentity0sequential/leaky_re_lu_2/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????Qy
#sequential/conv2d_transpose_2/ShapeShape&sequential/dropout_2/Identity:output:0*
T0*
_output_shapes
:{
1sequential/conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3sequential/conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3sequential/conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
+sequential/conv2d_transpose_2/strided_sliceStridedSlice,sequential/conv2d_transpose_2/Shape:output:0:sequential/conv2d_transpose_2/strided_slice/stack:output:0<sequential/conv2d_transpose_2/strided_slice/stack_1:output:0<sequential/conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential/conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B : g
%sequential/conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value	B : g
%sequential/conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value	B :?
#sequential/conv2d_transpose_2/stackPack4sequential/conv2d_transpose_2/strided_slice:output:0.sequential/conv2d_transpose_2/stack/1:output:0.sequential/conv2d_transpose_2/stack/2:output:0.sequential/conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:}
3sequential/conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5sequential/conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5sequential/conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
-sequential/conv2d_transpose_2/strided_slice_1StridedSlice,sequential/conv2d_transpose_2/stack:output:0<sequential/conv2d_transpose_2/strided_slice_1/stack:output:0>sequential/conv2d_transpose_2/strided_slice_1/stack_1:output:0>sequential/conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
=sequential/conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOpFsequential_conv2d_transpose_2_conv2d_transpose_readvariableop_resource*&
_output_shapes
:Q*
dtype0?
.sequential/conv2d_transpose_2/conv2d_transposeConv2DBackpropInput,sequential/conv2d_transpose_2/stack:output:0Esequential/conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:0&sequential/dropout_2/Identity:output:0*
T0*/
_output_shapes
:?????????  *
paddingSAME*
strides
?
4sequential/conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp=sequential_conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
%sequential/conv2d_transpose_2/BiasAddBiasAdd7sequential/conv2d_transpose_2/conv2d_transpose:output:0<sequential/conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  ?
>sequential/sync_batch_normalization_3/batchnorm/ReadVariableOpReadVariableOpGsequential_sync_batch_normalization_3_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0z
5sequential/sync_batch_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
3sequential/sync_batch_normalization_3/batchnorm/addAddV2Fsequential/sync_batch_normalization_3/batchnorm/ReadVariableOp:value:0>sequential/sync_batch_normalization_3/batchnorm/add/y:output:0*
T0*
_output_shapes
:?
5sequential/sync_batch_normalization_3/batchnorm/RsqrtRsqrt7sequential/sync_batch_normalization_3/batchnorm/add:z:0*
T0*
_output_shapes
:?
Bsequential/sync_batch_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOpKsequential_sync_batch_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0?
3sequential/sync_batch_normalization_3/batchnorm/mulMul9sequential/sync_batch_normalization_3/batchnorm/Rsqrt:y:0Jsequential/sync_batch_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:?
5sequential/sync_batch_normalization_3/batchnorm/mul_1Mul.sequential/conv2d_transpose_2/BiasAdd:output:07sequential/sync_batch_normalization_3/batchnorm/mul:z:0*
T0*/
_output_shapes
:?????????  ?
@sequential/sync_batch_normalization_3/batchnorm/ReadVariableOp_1ReadVariableOpIsequential_sync_batch_normalization_3_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0?
5sequential/sync_batch_normalization_3/batchnorm/mul_2MulHsequential/sync_batch_normalization_3/batchnorm/ReadVariableOp_1:value:07sequential/sync_batch_normalization_3/batchnorm/mul:z:0*
T0*
_output_shapes
:?
@sequential/sync_batch_normalization_3/batchnorm/ReadVariableOp_2ReadVariableOpIsequential_sync_batch_normalization_3_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0?
3sequential/sync_batch_normalization_3/batchnorm/subSubHsequential/sync_batch_normalization_3/batchnorm/ReadVariableOp_2:value:09sequential/sync_batch_normalization_3/batchnorm/mul_2:z:0*
T0*
_output_shapes
:?
5sequential/sync_batch_normalization_3/batchnorm/add_1AddV29sequential/sync_batch_normalization_3/batchnorm/mul_1:z:07sequential/sync_batch_normalization_3/batchnorm/sub:z:0*
T0*/
_output_shapes
:?????????  ?
"sequential/leaky_re_lu_3/LeakyRelu	LeakyRelu9sequential/sync_batch_normalization_3/batchnorm/add_1:z:0*/
_output_shapes
:?????????  *
alpha%???>?
sequential/dropout_3/IdentityIdentity0sequential/leaky_re_lu_3/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????  y
#sequential/conv2d_transpose_3/ShapeShape&sequential/dropout_3/Identity:output:0*
T0*
_output_shapes
:{
1sequential/conv2d_transpose_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3sequential/conv2d_transpose_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3sequential/conv2d_transpose_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
+sequential/conv2d_transpose_3/strided_sliceStridedSlice,sequential/conv2d_transpose_3/Shape:output:0:sequential/conv2d_transpose_3/strided_slice/stack:output:0<sequential/conv2d_transpose_3/strided_slice/stack_1:output:0<sequential/conv2d_transpose_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
%sequential/conv2d_transpose_3/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@g
%sequential/conv2d_transpose_3/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@g
%sequential/conv2d_transpose_3/stack/3Const*
_output_shapes
: *
dtype0*
value	B :?
#sequential/conv2d_transpose_3/stackPack4sequential/conv2d_transpose_3/strided_slice:output:0.sequential/conv2d_transpose_3/stack/1:output:0.sequential/conv2d_transpose_3/stack/2:output:0.sequential/conv2d_transpose_3/stack/3:output:0*
N*
T0*
_output_shapes
:}
3sequential/conv2d_transpose_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5sequential/conv2d_transpose_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5sequential/conv2d_transpose_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
-sequential/conv2d_transpose_3/strided_slice_1StridedSlice,sequential/conv2d_transpose_3/stack:output:0<sequential/conv2d_transpose_3/strided_slice_1/stack:output:0>sequential/conv2d_transpose_3/strided_slice_1/stack_1:output:0>sequential/conv2d_transpose_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
=sequential/conv2d_transpose_3/conv2d_transpose/ReadVariableOpReadVariableOpFsequential_conv2d_transpose_3_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0?
.sequential/conv2d_transpose_3/conv2d_transposeConv2DBackpropInput,sequential/conv2d_transpose_3/stack:output:0Esequential/conv2d_transpose_3/conv2d_transpose/ReadVariableOp:value:0&sequential/dropout_3/Identity:output:0*
T0*/
_output_shapes
:?????????@@*
paddingSAME*
strides
?
4sequential/conv2d_transpose_3/BiasAdd/ReadVariableOpReadVariableOp=sequential_conv2d_transpose_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
%sequential/conv2d_transpose_3/BiasAddBiasAdd7sequential/conv2d_transpose_3/conv2d_transpose:output:0<sequential/conv2d_transpose_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@?
%sequential/conv2d_transpose_3/SigmoidSigmoid.sequential/conv2d_transpose_3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@?
IdentityIdentity)sequential/conv2d_transpose_3/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:?????????@@?
NoOpNoOp3^sequential/conv2d_transpose/BiasAdd/ReadVariableOp<^sequential/conv2d_transpose/conv2d_transpose/ReadVariableOp5^sequential/conv2d_transpose_1/BiasAdd/ReadVariableOp>^sequential/conv2d_transpose_1/conv2d_transpose/ReadVariableOp5^sequential/conv2d_transpose_2/BiasAdd/ReadVariableOp>^sequential/conv2d_transpose_2/conv2d_transpose/ReadVariableOp5^sequential/conv2d_transpose_3/BiasAdd/ReadVariableOp>^sequential/conv2d_transpose_3/conv2d_transpose/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp=^sequential/sync_batch_normalization/batchnorm/ReadVariableOp?^sequential/sync_batch_normalization/batchnorm/ReadVariableOp_1?^sequential/sync_batch_normalization/batchnorm/ReadVariableOp_2A^sequential/sync_batch_normalization/batchnorm/mul/ReadVariableOp?^sequential/sync_batch_normalization_1/batchnorm/ReadVariableOpA^sequential/sync_batch_normalization_1/batchnorm/ReadVariableOp_1A^sequential/sync_batch_normalization_1/batchnorm/ReadVariableOp_2C^sequential/sync_batch_normalization_1/batchnorm/mul/ReadVariableOp?^sequential/sync_batch_normalization_2/batchnorm/ReadVariableOpA^sequential/sync_batch_normalization_2/batchnorm/ReadVariableOp_1A^sequential/sync_batch_normalization_2/batchnorm/ReadVariableOp_2C^sequential/sync_batch_normalization_2/batchnorm/mul/ReadVariableOp?^sequential/sync_batch_normalization_3/batchnorm/ReadVariableOpA^sequential/sync_batch_normalization_3/batchnorm/ReadVariableOp_1A^sequential/sync_batch_normalization_3/batchnorm/ReadVariableOp_2C^sequential/sync_batch_normalization_3/batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : 2h
2sequential/conv2d_transpose/BiasAdd/ReadVariableOp2sequential/conv2d_transpose/BiasAdd/ReadVariableOp2z
;sequential/conv2d_transpose/conv2d_transpose/ReadVariableOp;sequential/conv2d_transpose/conv2d_transpose/ReadVariableOp2l
4sequential/conv2d_transpose_1/BiasAdd/ReadVariableOp4sequential/conv2d_transpose_1/BiasAdd/ReadVariableOp2~
=sequential/conv2d_transpose_1/conv2d_transpose/ReadVariableOp=sequential/conv2d_transpose_1/conv2d_transpose/ReadVariableOp2l
4sequential/conv2d_transpose_2/BiasAdd/ReadVariableOp4sequential/conv2d_transpose_2/BiasAdd/ReadVariableOp2~
=sequential/conv2d_transpose_2/conv2d_transpose/ReadVariableOp=sequential/conv2d_transpose_2/conv2d_transpose/ReadVariableOp2l
4sequential/conv2d_transpose_3/BiasAdd/ReadVariableOp4sequential/conv2d_transpose_3/BiasAdd/ReadVariableOp2~
=sequential/conv2d_transpose_3/conv2d_transpose/ReadVariableOp=sequential/conv2d_transpose_3/conv2d_transpose/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2|
<sequential/sync_batch_normalization/batchnorm/ReadVariableOp<sequential/sync_batch_normalization/batchnorm/ReadVariableOp2?
>sequential/sync_batch_normalization/batchnorm/ReadVariableOp_1>sequential/sync_batch_normalization/batchnorm/ReadVariableOp_12?
>sequential/sync_batch_normalization/batchnorm/ReadVariableOp_2>sequential/sync_batch_normalization/batchnorm/ReadVariableOp_22?
@sequential/sync_batch_normalization/batchnorm/mul/ReadVariableOp@sequential/sync_batch_normalization/batchnorm/mul/ReadVariableOp2?
>sequential/sync_batch_normalization_1/batchnorm/ReadVariableOp>sequential/sync_batch_normalization_1/batchnorm/ReadVariableOp2?
@sequential/sync_batch_normalization_1/batchnorm/ReadVariableOp_1@sequential/sync_batch_normalization_1/batchnorm/ReadVariableOp_12?
@sequential/sync_batch_normalization_1/batchnorm/ReadVariableOp_2@sequential/sync_batch_normalization_1/batchnorm/ReadVariableOp_22?
Bsequential/sync_batch_normalization_1/batchnorm/mul/ReadVariableOpBsequential/sync_batch_normalization_1/batchnorm/mul/ReadVariableOp2?
>sequential/sync_batch_normalization_2/batchnorm/ReadVariableOp>sequential/sync_batch_normalization_2/batchnorm/ReadVariableOp2?
@sequential/sync_batch_normalization_2/batchnorm/ReadVariableOp_1@sequential/sync_batch_normalization_2/batchnorm/ReadVariableOp_12?
@sequential/sync_batch_normalization_2/batchnorm/ReadVariableOp_2@sequential/sync_batch_normalization_2/batchnorm/ReadVariableOp_22?
Bsequential/sync_batch_normalization_2/batchnorm/mul/ReadVariableOpBsequential/sync_batch_normalization_2/batchnorm/mul/ReadVariableOp2?
>sequential/sync_batch_normalization_3/batchnorm/ReadVariableOp>sequential/sync_batch_normalization_3/batchnorm/ReadVariableOp2?
@sequential/sync_batch_normalization_3/batchnorm/ReadVariableOp_1@sequential/sync_batch_normalization_3/batchnorm/ReadVariableOp_12?
@sequential/sync_batch_normalization_3/batchnorm/ReadVariableOp_2@sequential/sync_batch_normalization_3/batchnorm/ReadVariableOp_22?
Bsequential/sync_batch_normalization_3/batchnorm/mul/ReadVariableOpBsequential/sync_batch_normalization_3/batchnorm/mul/ReadVariableOp:U Q
(
_output_shapes
:??????????
%
_user_specified_namedense_input
?
E
)__inference_dropout_3_layer_call_fn_45503

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_43412h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????  :W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
E
)__inference_dropout_2_layer_call_fn_45304

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????Q* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_43384h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????Q"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????Q:W S
/
_output_shapes
:?????????Q
 
_user_specified_nameinputs
?
?
8__inference_sync_batch_normalization_layer_call_fn_44776

inputs
unknown:	?[
	unknown_0:	?[
	unknown_1:	?[
	unknown_2:	?[
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????[*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *\
fWRU
S__inference_sync_batch_normalization_layer_call_and_return_conditional_losses_42638p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????[`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????[: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????[
 
_user_specified_nameinputs
?
b
)__inference_dropout_3_layer_call_fn_45508

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_43495w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????  `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????  22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
\
"__inference_internal_grad_fn_45824
result_grads_0
result_grads_1

identity_1U
IdentityIdentityresult_grads_0*
T0*&
_output_shapes
:Q?
	IdentityN	IdentityNresult_grads_0result_grads_0*
T
2*+
_gradient_op_typeCustomGradient-45819*8
_output_shapes&
$:Q:Q[

Identity_1IdentityIdentityN:output:0*
T0*&
_output_shapes
:Q"!

identity_1Identity_1:output:0*7
_input_shapes&
$:Q:Q:V R
&
_output_shapes
:Q
(
_user_specified_nameresult_grads_0:VR
&
_output_shapes
:Q
(
_user_specified_nameresult_grads_1
?

c
D__inference_dropout_3_layer_call_and_return_conditional_losses_43495

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *???l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????  C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????  *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??u<?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????  w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????  q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????  a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????  :W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
?
U__inference_sync_batch_normalization_1_layer_call_and_return_conditional_losses_42793

inputs0
!batchnorm_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?2
#batchnorm_readvariableop_1_resource:	?2
#batchnorm_readvariableop_2_resource:	?
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?~
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*B
_output_shapes0
.:,????????????????????????????{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:??
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*B
_output_shapes0
.:,????????????????????????????}
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?	
?
:__inference_sync_batch_normalization_3_layer_call_fn_45394

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *^
fYRW
U__inference_sync_batch_normalization_3_layer_call_and_return_conditional_losses_43212?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
??
?
E__inference_sequential_layer_call_and_return_conditional_losses_44342

inputs8
$dense_matmul_readvariableop_resource:
??[4
%dense_biasadd_readvariableop_resource:	?[I
:sync_batch_normalization_batchnorm_readvariableop_resource:	?[M
>sync_batch_normalization_batchnorm_mul_readvariableop_resource:	?[K
<sync_batch_normalization_batchnorm_readvariableop_1_resource:	?[K
<sync_batch_normalization_batchnorm_readvariableop_2_resource:	?[U
9conv2d_transpose_conv2d_transpose_readvariableop_resource:		???
0conv2d_transpose_biasadd_readvariableop_resource:	?K
<sync_batch_normalization_1_batchnorm_readvariableop_resource:	?O
@sync_batch_normalization_1_batchnorm_mul_readvariableop_resource:	?M
>sync_batch_normalization_1_batchnorm_readvariableop_1_resource:	?M
>sync_batch_normalization_1_batchnorm_readvariableop_2_resource:	?V
;conv2d_transpose_1_conv2d_transpose_readvariableop_resource:		Q?@
2conv2d_transpose_1_biasadd_readvariableop_resource:QJ
<sync_batch_normalization_2_batchnorm_readvariableop_resource:QN
@sync_batch_normalization_2_batchnorm_mul_readvariableop_resource:QL
>sync_batch_normalization_2_batchnorm_readvariableop_1_resource:QL
>sync_batch_normalization_2_batchnorm_readvariableop_2_resource:QU
;conv2d_transpose_2_conv2d_transpose_readvariableop_resource:Q@
2conv2d_transpose_2_biasadd_readvariableop_resource:J
<sync_batch_normalization_3_batchnorm_readvariableop_resource:N
@sync_batch_normalization_3_batchnorm_mul_readvariableop_resource:L
>sync_batch_normalization_3_batchnorm_readvariableop_1_resource:L
>sync_batch_normalization_3_batchnorm_readvariableop_2_resource:U
;conv2d_transpose_3_conv2d_transpose_readvariableop_resource:@
2conv2d_transpose_3_biasadd_readvariableop_resource:
identity??'conv2d_transpose/BiasAdd/ReadVariableOp?0conv2d_transpose/conv2d_transpose/ReadVariableOp?)conv2d_transpose_1/BiasAdd/ReadVariableOp?2conv2d_transpose_1/conv2d_transpose/ReadVariableOp?)conv2d_transpose_2/BiasAdd/ReadVariableOp?2conv2d_transpose_2/conv2d_transpose/ReadVariableOp?)conv2d_transpose_3/BiasAdd/ReadVariableOp?2conv2d_transpose_3/conv2d_transpose/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?1sync_batch_normalization/batchnorm/ReadVariableOp?3sync_batch_normalization/batchnorm/ReadVariableOp_1?3sync_batch_normalization/batchnorm/ReadVariableOp_2?5sync_batch_normalization/batchnorm/mul/ReadVariableOp?3sync_batch_normalization_1/batchnorm/ReadVariableOp?5sync_batch_normalization_1/batchnorm/ReadVariableOp_1?5sync_batch_normalization_1/batchnorm/ReadVariableOp_2?7sync_batch_normalization_1/batchnorm/mul/ReadVariableOp?3sync_batch_normalization_2/batchnorm/ReadVariableOp?5sync_batch_normalization_2/batchnorm/ReadVariableOp_1?5sync_batch_normalization_2/batchnorm/ReadVariableOp_2?7sync_batch_normalization_2/batchnorm/mul/ReadVariableOp?3sync_batch_normalization_3/batchnorm/ReadVariableOp?5sync_batch_normalization_3/batchnorm/ReadVariableOp_1?5sync_batch_normalization_3/batchnorm/ReadVariableOp_2?7sync_batch_normalization_3/batchnorm/mul/ReadVariableOp?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
??[*
dtype0v
dense/MatMulMatMulinputs#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????[
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?[*
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????[?
1sync_batch_normalization/batchnorm/ReadVariableOpReadVariableOp:sync_batch_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:?[*
dtype0m
(sync_batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
&sync_batch_normalization/batchnorm/addAddV29sync_batch_normalization/batchnorm/ReadVariableOp:value:01sync_batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?[?
(sync_batch_normalization/batchnorm/RsqrtRsqrt*sync_batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes	
:?[?
5sync_batch_normalization/batchnorm/mul/ReadVariableOpReadVariableOp>sync_batch_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?[*
dtype0?
&sync_batch_normalization/batchnorm/mulMul,sync_batch_normalization/batchnorm/Rsqrt:y:0=sync_batch_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?[?
(sync_batch_normalization/batchnorm/mul_1Muldense/BiasAdd:output:0*sync_batch_normalization/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????[?
3sync_batch_normalization/batchnorm/ReadVariableOp_1ReadVariableOp<sync_batch_normalization_batchnorm_readvariableop_1_resource*
_output_shapes	
:?[*
dtype0?
(sync_batch_normalization/batchnorm/mul_2Mul;sync_batch_normalization/batchnorm/ReadVariableOp_1:value:0*sync_batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes	
:?[?
3sync_batch_normalization/batchnorm/ReadVariableOp_2ReadVariableOp<sync_batch_normalization_batchnorm_readvariableop_2_resource*
_output_shapes	
:?[*
dtype0?
&sync_batch_normalization/batchnorm/subSub;sync_batch_normalization/batchnorm/ReadVariableOp_2:value:0,sync_batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?[?
(sync_batch_normalization/batchnorm/add_1AddV2,sync_batch_normalization/batchnorm/mul_1:z:0*sync_batch_normalization/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????[?
leaky_re_lu/LeakyRelu	LeakyRelu,sync_batch_normalization/batchnorm/add_1:z:0*(
_output_shapes
:??????????[*
alpha%???>t
dropout/IdentityIdentity#leaky_re_lu/LeakyRelu:activations:0*
T0*(
_output_shapes
:??????????[V
reshape/ShapeShapedropout/Identity:output:0*
T0*
_output_shapes
:e
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Y
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Z
reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :??
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0 reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
reshape/ReshapeReshapedropout/Identity:output:0reshape/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????^
conv2d_transpose/ShapeShapereshape/Reshape:output:0*
T0*
_output_shapes
:n
$conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
conv2d_transpose/strided_sliceStridedSliceconv2d_transpose/Shape:output:0-conv2d_transpose/strided_slice/stack:output:0/conv2d_transpose/strided_slice/stack_1:output:0/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :Z
conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B :[
conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value
B :??
conv2d_transpose/stackPack'conv2d_transpose/strided_slice:output:0!conv2d_transpose/stack/1:output:0!conv2d_transpose/stack/2:output:0!conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:p
&conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv2d_transpose/strided_slice_1StridedSliceconv2d_transpose/stack:output:0/conv2d_transpose/strided_slice_1/stack:output:01conv2d_transpose/strided_slice_1/stack_1:output:01conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
0conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOp9conv2d_transpose_conv2d_transpose_readvariableop_resource*(
_output_shapes
:		??*
dtype0?
!conv2d_transpose/conv2d_transposeConv2DBackpropInputconv2d_transpose/stack:output:08conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0reshape/Reshape:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
'conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp0conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_transpose/BiasAddBiasAdd*conv2d_transpose/conv2d_transpose:output:0/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
3sync_batch_normalization_1/batchnorm/ReadVariableOpReadVariableOp<sync_batch_normalization_1_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0o
*sync_batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
(sync_batch_normalization_1/batchnorm/addAddV2;sync_batch_normalization_1/batchnorm/ReadVariableOp:value:03sync_batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes	
:??
*sync_batch_normalization_1/batchnorm/RsqrtRsqrt,sync_batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes	
:??
7sync_batch_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp@sync_batch_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0?
(sync_batch_normalization_1/batchnorm/mulMul.sync_batch_normalization_1/batchnorm/Rsqrt:y:0?sync_batch_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:??
*sync_batch_normalization_1/batchnorm/mul_1Mul!conv2d_transpose/BiasAdd:output:0,sync_batch_normalization_1/batchnorm/mul:z:0*
T0*0
_output_shapes
:???????????
5sync_batch_normalization_1/batchnorm/ReadVariableOp_1ReadVariableOp>sync_batch_normalization_1_batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype0?
*sync_batch_normalization_1/batchnorm/mul_2Mul=sync_batch_normalization_1/batchnorm/ReadVariableOp_1:value:0,sync_batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes	
:??
5sync_batch_normalization_1/batchnorm/ReadVariableOp_2ReadVariableOp>sync_batch_normalization_1_batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype0?
(sync_batch_normalization_1/batchnorm/subSub=sync_batch_normalization_1/batchnorm/ReadVariableOp_2:value:0.sync_batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:??
*sync_batch_normalization_1/batchnorm/add_1AddV2.sync_batch_normalization_1/batchnorm/mul_1:z:0,sync_batch_normalization_1/batchnorm/sub:z:0*
T0*0
_output_shapes
:???????????
leaky_re_lu_1/LeakyRelu	LeakyRelu.sync_batch_normalization_1/batchnorm/add_1:z:0*0
_output_shapes
:??????????*
alpha%???>?
dropout_1/IdentityIdentity%leaky_re_lu_1/LeakyRelu:activations:0*
T0*0
_output_shapes
:??????????c
conv2d_transpose_1/ShapeShapedropout_1/Identity:output:0*
T0*
_output_shapes
:p
&conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv2d_transpose_1/strided_sliceStridedSlice!conv2d_transpose_1/Shape:output:0/conv2d_transpose_1/strided_slice/stack:output:01conv2d_transpose_1/strided_slice/stack_1:output:01conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :\
conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :\
conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :Q?
conv2d_transpose_1/stackPack)conv2d_transpose_1/strided_slice:output:0#conv2d_transpose_1/stack/1:output:0#conv2d_transpose_1/stack/2:output:0#conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"conv2d_transpose_1/strided_slice_1StridedSlice!conv2d_transpose_1/stack:output:01conv2d_transpose_1/strided_slice_1/stack:output:03conv2d_transpose_1/strided_slice_1/stack_1:output:03conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
2conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_1_conv2d_transpose_readvariableop_resource*'
_output_shapes
:		Q?*
dtype0?
#conv2d_transpose_1/conv2d_transposeConv2DBackpropInput!conv2d_transpose_1/stack:output:0:conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0dropout_1/Identity:output:0*
T0*/
_output_shapes
:?????????Q*
paddingSAME*
strides
?
)conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes
:Q*
dtype0?
conv2d_transpose_1/BiasAddBiasAdd,conv2d_transpose_1/conv2d_transpose:output:01conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Q?
3sync_batch_normalization_2/batchnorm/ReadVariableOpReadVariableOp<sync_batch_normalization_2_batchnorm_readvariableop_resource*
_output_shapes
:Q*
dtype0o
*sync_batch_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
(sync_batch_normalization_2/batchnorm/addAddV2;sync_batch_normalization_2/batchnorm/ReadVariableOp:value:03sync_batch_normalization_2/batchnorm/add/y:output:0*
T0*
_output_shapes
:Q?
*sync_batch_normalization_2/batchnorm/RsqrtRsqrt,sync_batch_normalization_2/batchnorm/add:z:0*
T0*
_output_shapes
:Q?
7sync_batch_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOp@sync_batch_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes
:Q*
dtype0?
(sync_batch_normalization_2/batchnorm/mulMul.sync_batch_normalization_2/batchnorm/Rsqrt:y:0?sync_batch_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:Q?
*sync_batch_normalization_2/batchnorm/mul_1Mul#conv2d_transpose_1/BiasAdd:output:0,sync_batch_normalization_2/batchnorm/mul:z:0*
T0*/
_output_shapes
:?????????Q?
5sync_batch_normalization_2/batchnorm/ReadVariableOp_1ReadVariableOp>sync_batch_normalization_2_batchnorm_readvariableop_1_resource*
_output_shapes
:Q*
dtype0?
*sync_batch_normalization_2/batchnorm/mul_2Mul=sync_batch_normalization_2/batchnorm/ReadVariableOp_1:value:0,sync_batch_normalization_2/batchnorm/mul:z:0*
T0*
_output_shapes
:Q?
5sync_batch_normalization_2/batchnorm/ReadVariableOp_2ReadVariableOp>sync_batch_normalization_2_batchnorm_readvariableop_2_resource*
_output_shapes
:Q*
dtype0?
(sync_batch_normalization_2/batchnorm/subSub=sync_batch_normalization_2/batchnorm/ReadVariableOp_2:value:0.sync_batch_normalization_2/batchnorm/mul_2:z:0*
T0*
_output_shapes
:Q?
*sync_batch_normalization_2/batchnorm/add_1AddV2.sync_batch_normalization_2/batchnorm/mul_1:z:0,sync_batch_normalization_2/batchnorm/sub:z:0*
T0*/
_output_shapes
:?????????Q?
leaky_re_lu_2/LeakyRelu	LeakyRelu.sync_batch_normalization_2/batchnorm/add_1:z:0*/
_output_shapes
:?????????Q*
alpha%???>
dropout_2/IdentityIdentity%leaky_re_lu_2/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????Qc
conv2d_transpose_2/ShapeShapedropout_2/Identity:output:0*
T0*
_output_shapes
:p
&conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv2d_transpose_2/strided_sliceStridedSlice!conv2d_transpose_2/Shape:output:0/conv2d_transpose_2/strided_slice/stack:output:01conv2d_transpose_2/strided_slice/stack_1:output:01conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B : \
conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value	B : \
conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value	B :?
conv2d_transpose_2/stackPack)conv2d_transpose_2/strided_slice:output:0#conv2d_transpose_2/stack/1:output:0#conv2d_transpose_2/stack/2:output:0#conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"conv2d_transpose_2/strided_slice_1StridedSlice!conv2d_transpose_2/stack:output:01conv2d_transpose_2/strided_slice_1/stack:output:03conv2d_transpose_2/strided_slice_1/stack_1:output:03conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
2conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_2_conv2d_transpose_readvariableop_resource*&
_output_shapes
:Q*
dtype0?
#conv2d_transpose_2/conv2d_transposeConv2DBackpropInput!conv2d_transpose_2/stack:output:0:conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:0dropout_2/Identity:output:0*
T0*/
_output_shapes
:?????????  *
paddingSAME*
strides
?
)conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_transpose_2/BiasAddBiasAdd,conv2d_transpose_2/conv2d_transpose:output:01conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  ?
3sync_batch_normalization_3/batchnorm/ReadVariableOpReadVariableOp<sync_batch_normalization_3_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0o
*sync_batch_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
(sync_batch_normalization_3/batchnorm/addAddV2;sync_batch_normalization_3/batchnorm/ReadVariableOp:value:03sync_batch_normalization_3/batchnorm/add/y:output:0*
T0*
_output_shapes
:?
*sync_batch_normalization_3/batchnorm/RsqrtRsqrt,sync_batch_normalization_3/batchnorm/add:z:0*
T0*
_output_shapes
:?
7sync_batch_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOp@sync_batch_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0?
(sync_batch_normalization_3/batchnorm/mulMul.sync_batch_normalization_3/batchnorm/Rsqrt:y:0?sync_batch_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:?
*sync_batch_normalization_3/batchnorm/mul_1Mul#conv2d_transpose_2/BiasAdd:output:0,sync_batch_normalization_3/batchnorm/mul:z:0*
T0*/
_output_shapes
:?????????  ?
5sync_batch_normalization_3/batchnorm/ReadVariableOp_1ReadVariableOp>sync_batch_normalization_3_batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0?
*sync_batch_normalization_3/batchnorm/mul_2Mul=sync_batch_normalization_3/batchnorm/ReadVariableOp_1:value:0,sync_batch_normalization_3/batchnorm/mul:z:0*
T0*
_output_shapes
:?
5sync_batch_normalization_3/batchnorm/ReadVariableOp_2ReadVariableOp>sync_batch_normalization_3_batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0?
(sync_batch_normalization_3/batchnorm/subSub=sync_batch_normalization_3/batchnorm/ReadVariableOp_2:value:0.sync_batch_normalization_3/batchnorm/mul_2:z:0*
T0*
_output_shapes
:?
*sync_batch_normalization_3/batchnorm/add_1AddV2.sync_batch_normalization_3/batchnorm/mul_1:z:0,sync_batch_normalization_3/batchnorm/sub:z:0*
T0*/
_output_shapes
:?????????  ?
leaky_re_lu_3/LeakyRelu	LeakyRelu.sync_batch_normalization_3/batchnorm/add_1:z:0*/
_output_shapes
:?????????  *
alpha%???>
dropout_3/IdentityIdentity%leaky_re_lu_3/LeakyRelu:activations:0*
T0*/
_output_shapes
:?????????  c
conv2d_transpose_3/ShapeShapedropout_3/Identity:output:0*
T0*
_output_shapes
:p
&conv2d_transpose_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv2d_transpose_3/strided_sliceStridedSlice!conv2d_transpose_3/Shape:output:0/conv2d_transpose_3/strided_slice/stack:output:01conv2d_transpose_3/strided_slice/stack_1:output:01conv2d_transpose_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
conv2d_transpose_3/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@\
conv2d_transpose_3/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@\
conv2d_transpose_3/stack/3Const*
_output_shapes
: *
dtype0*
value	B :?
conv2d_transpose_3/stackPack)conv2d_transpose_3/strided_slice:output:0#conv2d_transpose_3/stack/1:output:0#conv2d_transpose_3/stack/2:output:0#conv2d_transpose_3/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"conv2d_transpose_3/strided_slice_1StridedSlice!conv2d_transpose_3/stack:output:01conv2d_transpose_3/strided_slice_1/stack:output:03conv2d_transpose_3/strided_slice_1/stack_1:output:03conv2d_transpose_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
2conv2d_transpose_3/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_3_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0?
#conv2d_transpose_3/conv2d_transposeConv2DBackpropInput!conv2d_transpose_3/stack:output:0:conv2d_transpose_3/conv2d_transpose/ReadVariableOp:value:0dropout_3/Identity:output:0*
T0*/
_output_shapes
:?????????@@*
paddingSAME*
strides
?
)conv2d_transpose_3/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_transpose_3/BiasAddBiasAdd,conv2d_transpose_3/conv2d_transpose:output:01conv2d_transpose_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@?
conv2d_transpose_3/SigmoidSigmoid#conv2d_transpose_3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@u
IdentityIdentityconv2d_transpose_3/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:?????????@@?

NoOpNoOp(^conv2d_transpose/BiasAdd/ReadVariableOp1^conv2d_transpose/conv2d_transpose/ReadVariableOp*^conv2d_transpose_1/BiasAdd/ReadVariableOp3^conv2d_transpose_1/conv2d_transpose/ReadVariableOp*^conv2d_transpose_2/BiasAdd/ReadVariableOp3^conv2d_transpose_2/conv2d_transpose/ReadVariableOp*^conv2d_transpose_3/BiasAdd/ReadVariableOp3^conv2d_transpose_3/conv2d_transpose/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp2^sync_batch_normalization/batchnorm/ReadVariableOp4^sync_batch_normalization/batchnorm/ReadVariableOp_14^sync_batch_normalization/batchnorm/ReadVariableOp_26^sync_batch_normalization/batchnorm/mul/ReadVariableOp4^sync_batch_normalization_1/batchnorm/ReadVariableOp6^sync_batch_normalization_1/batchnorm/ReadVariableOp_16^sync_batch_normalization_1/batchnorm/ReadVariableOp_28^sync_batch_normalization_1/batchnorm/mul/ReadVariableOp4^sync_batch_normalization_2/batchnorm/ReadVariableOp6^sync_batch_normalization_2/batchnorm/ReadVariableOp_16^sync_batch_normalization_2/batchnorm/ReadVariableOp_28^sync_batch_normalization_2/batchnorm/mul/ReadVariableOp4^sync_batch_normalization_3/batchnorm/ReadVariableOp6^sync_batch_normalization_3/batchnorm/ReadVariableOp_16^sync_batch_normalization_3/batchnorm/ReadVariableOp_28^sync_batch_normalization_3/batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : 2R
'conv2d_transpose/BiasAdd/ReadVariableOp'conv2d_transpose/BiasAdd/ReadVariableOp2d
0conv2d_transpose/conv2d_transpose/ReadVariableOp0conv2d_transpose/conv2d_transpose/ReadVariableOp2V
)conv2d_transpose_1/BiasAdd/ReadVariableOp)conv2d_transpose_1/BiasAdd/ReadVariableOp2h
2conv2d_transpose_1/conv2d_transpose/ReadVariableOp2conv2d_transpose_1/conv2d_transpose/ReadVariableOp2V
)conv2d_transpose_2/BiasAdd/ReadVariableOp)conv2d_transpose_2/BiasAdd/ReadVariableOp2h
2conv2d_transpose_2/conv2d_transpose/ReadVariableOp2conv2d_transpose_2/conv2d_transpose/ReadVariableOp2V
)conv2d_transpose_3/BiasAdd/ReadVariableOp)conv2d_transpose_3/BiasAdd/ReadVariableOp2h
2conv2d_transpose_3/conv2d_transpose/ReadVariableOp2conv2d_transpose_3/conv2d_transpose/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2f
1sync_batch_normalization/batchnorm/ReadVariableOp1sync_batch_normalization/batchnorm/ReadVariableOp2j
3sync_batch_normalization/batchnorm/ReadVariableOp_13sync_batch_normalization/batchnorm/ReadVariableOp_12j
3sync_batch_normalization/batchnorm/ReadVariableOp_23sync_batch_normalization/batchnorm/ReadVariableOp_22n
5sync_batch_normalization/batchnorm/mul/ReadVariableOp5sync_batch_normalization/batchnorm/mul/ReadVariableOp2j
3sync_batch_normalization_1/batchnorm/ReadVariableOp3sync_batch_normalization_1/batchnorm/ReadVariableOp2n
5sync_batch_normalization_1/batchnorm/ReadVariableOp_15sync_batch_normalization_1/batchnorm/ReadVariableOp_12n
5sync_batch_normalization_1/batchnorm/ReadVariableOp_25sync_batch_normalization_1/batchnorm/ReadVariableOp_22r
7sync_batch_normalization_1/batchnorm/mul/ReadVariableOp7sync_batch_normalization_1/batchnorm/mul/ReadVariableOp2j
3sync_batch_normalization_2/batchnorm/ReadVariableOp3sync_batch_normalization_2/batchnorm/ReadVariableOp2n
5sync_batch_normalization_2/batchnorm/ReadVariableOp_15sync_batch_normalization_2/batchnorm/ReadVariableOp_12n
5sync_batch_normalization_2/batchnorm/ReadVariableOp_25sync_batch_normalization_2/batchnorm/ReadVariableOp_22r
7sync_batch_normalization_2/batchnorm/mul/ReadVariableOp7sync_batch_normalization_2/batchnorm/mul/ReadVariableOp2j
3sync_batch_normalization_3/batchnorm/ReadVariableOp3sync_batch_normalization_3/batchnorm/ReadVariableOp2n
5sync_batch_normalization_3/batchnorm/ReadVariableOp_15sync_batch_normalization_3/batchnorm/ReadVariableOp_12n
5sync_batch_normalization_3/batchnorm/ReadVariableOp_25sync_batch_normalization_3/batchnorm/ReadVariableOp_22r
7sync_batch_normalization_3/batchnorm/mul/ReadVariableOp7sync_batch_normalization_3/batchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
*__inference_sequential_layer_call_fn_43475
dense_input
unknown:
??[
	unknown_0:	?[
	unknown_1:	?[
	unknown_2:	?[
	unknown_3:	?[
	unknown_4:	?[%
	unknown_5:		??
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?
	unknown_9:	?

unknown_10:	?%

unknown_11:		Q?

unknown_12:Q

unknown_13:Q

unknown_14:Q

unknown_15:Q

unknown_16:Q$

unknown_17:Q

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:$

unknown_23:

unknown_24:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*<
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_43420w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
(
_output_shapes
:??????????
%
_user_specified_namedense_input
?
d
H__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_43377

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:?????????Q*
alpha%???>g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:?????????Q"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????Q:W S
/
_output_shapes
:?????????Q
 
_user_specified_nameinputs
?

c
D__inference_dropout_2_layer_call_and_return_conditional_losses_45326

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *???l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????QC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????Q*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??u<?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????Qw
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????Qq
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????Qa
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????Q"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????Q:W S
/
_output_shapes
:?????????Q
 
_user_specified_nameinputs
?W
?
E__inference_sequential_layer_call_and_return_conditional_losses_43420

inputs
dense_43286:
??[
dense_43288:	?[-
sync_batch_normalization_43291:	?[-
sync_batch_normalization_43293:	?[-
sync_batch_normalization_43295:	?[-
sync_batch_normalization_43297:	?[2
conv2d_transpose_43330:		??%
conv2d_transpose_43332:	?/
 sync_batch_normalization_1_43335:	?/
 sync_batch_normalization_1_43337:	?/
 sync_batch_normalization_1_43339:	?/
 sync_batch_normalization_1_43341:	?3
conv2d_transpose_1_43358:		Q?&
conv2d_transpose_1_43360:Q.
 sync_batch_normalization_2_43363:Q.
 sync_batch_normalization_2_43365:Q.
 sync_batch_normalization_2_43367:Q.
 sync_batch_normalization_2_43369:Q2
conv2d_transpose_2_43386:Q&
conv2d_transpose_2_43388:.
 sync_batch_normalization_3_43391:.
 sync_batch_normalization_3_43393:.
 sync_batch_normalization_3_43395:.
 sync_batch_normalization_3_43397:2
conv2d_transpose_3_43414:&
conv2d_transpose_3_43416:
identity??(conv2d_transpose/StatefulPartitionedCall?*conv2d_transpose_1/StatefulPartitionedCall?*conv2d_transpose_2/StatefulPartitionedCall?*conv2d_transpose_3/StatefulPartitionedCall?dense/StatefulPartitionedCall?0sync_batch_normalization/StatefulPartitionedCall?2sync_batch_normalization_1/StatefulPartitionedCall?2sync_batch_normalization_2/StatefulPartitionedCall?2sync_batch_normalization_3/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCallinputsdense_43286dense_43288*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????[*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_43285?
0sync_batch_normalization/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0sync_batch_normalization_43291sync_batch_normalization_43293sync_batch_normalization_43295sync_batch_normalization_43297*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????[*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *\
fWRU
S__inference_sync_batch_normalization_layer_call_and_return_conditional_losses_42638?
leaky_re_lu/PartitionedCallPartitionedCall9sync_batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????[* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_leaky_re_lu_layer_call_and_return_conditional_losses_43305?
dropout/PartitionedCallPartitionedCall$leaky_re_lu/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????[* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_43312?
reshape/PartitionedCallPartitionedCall dropout/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_reshape_layer_call_and_return_conditional_losses_43328?
(conv2d_transpose/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0conv2d_transpose_43330conv2d_transpose_43332*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *T
fORM
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_42762?
2sync_batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall1conv2d_transpose/StatefulPartitionedCall:output:0 sync_batch_normalization_1_43335 sync_batch_normalization_1_43337 sync_batch_normalization_1_43339 sync_batch_normalization_1_43341*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *^
fYRW
U__inference_sync_batch_normalization_1_layer_call_and_return_conditional_losses_42793?
leaky_re_lu_1/PartitionedCallPartitionedCall;sync_batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *Q
fLRJ
H__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_43349?
dropout_1/PartitionedCallPartitionedCall&leaky_re_lu_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_43356?
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0conv2d_transpose_1_43358conv2d_transpose_1_43360*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????Q*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *V
fQRO
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_42928?
2sync_batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_1/StatefulPartitionedCall:output:0 sync_batch_normalization_2_43363 sync_batch_normalization_2_43365 sync_batch_normalization_2_43367 sync_batch_normalization_2_43369*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????Q*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *^
fYRW
U__inference_sync_batch_normalization_2_layer_call_and_return_conditional_losses_42959?
leaky_re_lu_2/PartitionedCallPartitionedCall;sync_batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????Q* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *Q
fLRJ
H__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_43377?
dropout_2/PartitionedCallPartitionedCall&leaky_re_lu_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????Q* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_43384?
*conv2d_transpose_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0conv2d_transpose_2_43386conv2d_transpose_2_43388*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *V
fQRO
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_43094?
2sync_batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_2/StatefulPartitionedCall:output:0 sync_batch_normalization_3_43391 sync_batch_normalization_3_43393 sync_batch_normalization_3_43395 sync_batch_normalization_3_43397*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  *&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *^
fYRW
U__inference_sync_batch_normalization_3_layer_call_and_return_conditional_losses_43125?
leaky_re_lu_3/PartitionedCallPartitionedCall;sync_batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *Q
fLRJ
H__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_43405?
dropout_3/PartitionedCallPartitionedCall&leaky_re_lu_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_43412?
*conv2d_transpose_3/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0conv2d_transpose_3_43414conv2d_transpose_3_43416*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *V
fQRO
M__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_43261?
IdentityIdentity3conv2d_transpose_3/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@@?
NoOpNoOp)^conv2d_transpose/StatefulPartitionedCall+^conv2d_transpose_1/StatefulPartitionedCall+^conv2d_transpose_2/StatefulPartitionedCall+^conv2d_transpose_3/StatefulPartitionedCall^dense/StatefulPartitionedCall1^sync_batch_normalization/StatefulPartitionedCall3^sync_batch_normalization_1/StatefulPartitionedCall3^sync_batch_normalization_2/StatefulPartitionedCall3^sync_batch_normalization_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : 2T
(conv2d_transpose/StatefulPartitionedCall(conv2d_transpose/StatefulPartitionedCall2X
*conv2d_transpose_1/StatefulPartitionedCall*conv2d_transpose_1/StatefulPartitionedCall2X
*conv2d_transpose_2/StatefulPartitionedCall*conv2d_transpose_2/StatefulPartitionedCall2X
*conv2d_transpose_3/StatefulPartitionedCall*conv2d_transpose_3/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2d
0sync_batch_normalization/StatefulPartitionedCall0sync_batch_normalization/StatefulPartitionedCall2h
2sync_batch_normalization_1/StatefulPartitionedCall2sync_batch_normalization_1/StatefulPartitionedCall2h
2sync_batch_normalization_2/StatefulPartitionedCall2sync_batch_normalization_2/StatefulPartitionedCall2h
2sync_batch_normalization_3/StatefulPartitionedCall2sync_batch_normalization_3/StatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
^
B__inference_reshape_layer_call_and_return_conditional_losses_44928

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :R
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :??
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:m
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:??????????a
IdentityIdentityReshape:output:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????[:P L
(
_output_shapes
:??????????[
 
_user_specified_nameinputs
?
I
-__inference_leaky_re_lu_2_layer_call_fn_45294

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????Q* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *Q
fLRJ
H__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_43377h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????Q"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????Q:W S
/
_output_shapes
:?????????Q
 
_user_specified_nameinputs
?
?
2__inference_conv2d_transpose_3_layer_call_fn_45534

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *V
fQRO
M__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_43261?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
`
B__inference_dropout_layer_call_and_return_conditional_losses_44897

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????[\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????["!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????[:P L
(
_output_shapes
:??????????[
 
_user_specified_nameinputs
?
I
-__inference_leaky_re_lu_3_layer_call_fn_45493

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *Q
fLRJ
H__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_43405h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:?????????  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????  :W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?	
?
:__inference_sync_batch_normalization_2_layer_call_fn_45182

inputs
unknown:Q
	unknown_0:Q
	unknown_1:Q
	unknown_2:Q
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????Q*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *^
fYRW
U__inference_sync_batch_normalization_2_layer_call_and_return_conditional_losses_42959?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????Q`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????Q: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????Q
 
_user_specified_nameinputs
?
?
2__inference_conv2d_transpose_1_layer_call_fn_45136

inputs"
unknown:		Q?
	unknown_0:Q
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????Q*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *V
fQRO
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_42928?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????Q`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,????????????????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?]
?
E__inference_sequential_layer_call_and_return_conditional_losses_44000
dense_input
dense_43929:
??[
dense_43931:	?[-
sync_batch_normalization_43934:	?[-
sync_batch_normalization_43936:	?[-
sync_batch_normalization_43938:	?[-
sync_batch_normalization_43940:	?[2
conv2d_transpose_43946:		??%
conv2d_transpose_43948:	?/
 sync_batch_normalization_1_43951:	?/
 sync_batch_normalization_1_43953:	?/
 sync_batch_normalization_1_43955:	?/
 sync_batch_normalization_1_43957:	?3
conv2d_transpose_1_43962:		Q?&
conv2d_transpose_1_43964:Q.
 sync_batch_normalization_2_43967:Q.
 sync_batch_normalization_2_43969:Q.
 sync_batch_normalization_2_43971:Q.
 sync_batch_normalization_2_43973:Q2
conv2d_transpose_2_43978:Q&
conv2d_transpose_2_43980:.
 sync_batch_normalization_3_43983:.
 sync_batch_normalization_3_43985:.
 sync_batch_normalization_3_43987:.
 sync_batch_normalization_3_43989:2
conv2d_transpose_3_43994:&
conv2d_transpose_3_43996:
identity??(conv2d_transpose/StatefulPartitionedCall?*conv2d_transpose_1/StatefulPartitionedCall?*conv2d_transpose_2/StatefulPartitionedCall?*conv2d_transpose_3/StatefulPartitionedCall?dense/StatefulPartitionedCall?dropout/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?!dropout_2/StatefulPartitionedCall?!dropout_3/StatefulPartitionedCall?0sync_batch_normalization/StatefulPartitionedCall?2sync_batch_normalization_1/StatefulPartitionedCall?2sync_batch_normalization_2/StatefulPartitionedCall?2sync_batch_normalization_3/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCalldense_inputdense_43929dense_43931*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????[*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_43285?
0sync_batch_normalization/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0sync_batch_normalization_43934sync_batch_normalization_43936sync_batch_normalization_43938sync_batch_normalization_43940*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????[*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *\
fWRU
S__inference_sync_batch_normalization_layer_call_and_return_conditional_losses_42714?
leaky_re_lu/PartitionedCallPartitionedCall9sync_batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????[* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_leaky_re_lu_layer_call_and_return_conditional_losses_43305?
dropout/StatefulPartitionedCallStatefulPartitionedCall$leaky_re_lu/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????[* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_43588?
reshape/PartitionedCallPartitionedCall(dropout/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_reshape_layer_call_and_return_conditional_losses_43328?
(conv2d_transpose/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0conv2d_transpose_43946conv2d_transpose_43948*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *T
fORM
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_42762?
2sync_batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall1conv2d_transpose/StatefulPartitionedCall:output:0 sync_batch_normalization_1_43951 sync_batch_normalization_1_43953 sync_batch_normalization_1_43955 sync_batch_normalization_1_43957*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *^
fYRW
U__inference_sync_batch_normalization_1_layer_call_and_return_conditional_losses_42880?
leaky_re_lu_1/PartitionedCallPartitionedCall;sync_batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *Q
fLRJ
H__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_43349?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_1/PartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_43553?
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0conv2d_transpose_1_43962conv2d_transpose_1_43964*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????Q*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *V
fQRO
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_42928?
2sync_batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_1/StatefulPartitionedCall:output:0 sync_batch_normalization_2_43967 sync_batch_normalization_2_43969 sync_batch_normalization_2_43971 sync_batch_normalization_2_43973*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????Q*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *^
fYRW
U__inference_sync_batch_normalization_2_layer_call_and_return_conditional_losses_43046?
leaky_re_lu_2/PartitionedCallPartitionedCall;sync_batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????Q* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *Q
fLRJ
H__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_43377?
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_2/PartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????Q* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_43524?
*conv2d_transpose_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0conv2d_transpose_2_43978conv2d_transpose_2_43980*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *V
fQRO
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_43094?
2sync_batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_2/StatefulPartitionedCall:output:0 sync_batch_normalization_3_43983 sync_batch_normalization_3_43985 sync_batch_normalization_3_43987 sync_batch_normalization_3_43989*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *^
fYRW
U__inference_sync_batch_normalization_3_layer_call_and_return_conditional_losses_43212?
leaky_re_lu_3/PartitionedCallPartitionedCall;sync_batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *Q
fLRJ
H__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_43405?
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_3/PartitionedCall:output:0"^dropout_2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_43495?
*conv2d_transpose_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0conv2d_transpose_3_43994conv2d_transpose_3_43996*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *V
fQRO
M__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_43261?
IdentityIdentity3conv2d_transpose_3/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@@?
NoOpNoOp)^conv2d_transpose/StatefulPartitionedCall+^conv2d_transpose_1/StatefulPartitionedCall+^conv2d_transpose_2/StatefulPartitionedCall+^conv2d_transpose_3/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall1^sync_batch_normalization/StatefulPartitionedCall3^sync_batch_normalization_1/StatefulPartitionedCall3^sync_batch_normalization_2/StatefulPartitionedCall3^sync_batch_normalization_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : 2T
(conv2d_transpose/StatefulPartitionedCall(conv2d_transpose/StatefulPartitionedCall2X
*conv2d_transpose_1/StatefulPartitionedCall*conv2d_transpose_1/StatefulPartitionedCall2X
*conv2d_transpose_2/StatefulPartitionedCall*conv2d_transpose_2/StatefulPartitionedCall2X
*conv2d_transpose_3/StatefulPartitionedCall*conv2d_transpose_3/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2d
0sync_batch_normalization/StatefulPartitionedCall0sync_batch_normalization/StatefulPartitionedCall2h
2sync_batch_normalization_1/StatefulPartitionedCall2sync_batch_normalization_1/StatefulPartitionedCall2h
2sync_batch_normalization_2/StatefulPartitionedCall2sync_batch_normalization_2/StatefulPartitionedCall2h
2sync_batch_normalization_3/StatefulPartitionedCall2sync_batch_normalization_3/StatefulPartitionedCall:U Q
(
_output_shapes
:??????????
%
_user_specified_namedense_input
?F
?
U__inference_sync_batch_normalization_2_layer_call_and_return_conditional_losses_45289

inputs5
'assignmovingavg_readvariableop_resource:Q7
)assignmovingavg_1_readvariableop_resource:Q3
%batchnorm_mul_readvariableop_resource:Q/
!batchnorm_readvariableop_resource:Q
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOpr
moments/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          ?
moments/SumSuminputs&moments/Sum/reduction_indices:output:0*
T0*&
_output_shapes
:Q*
	keep_dims(l
moments/SquareSquareinputs*
T0*A
_output_shapes/
-:+???????????????????????????Qt
moments/Sum_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          ?
moments/Sum_1Summoments/Square:y:0(moments/Sum_1/reduction_indices:output:0*
T0*&
_output_shapes
:Q*
	keep_dims(C
moments/ShapeShapeinputs*
T0*
_output_shapes
:e
moments/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
moments/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
moments/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
moments/strided_sliceStridedSlicemoments/Shape:output:0$moments/strided_slice/stack:output:0&moments/strided_slice/stack_1:output:0&moments/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
moments/CastCastmoments/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: c
moments/IdentityIdentitymoments/Sum:output:0*
T0*&
_output_shapes
:Q?
moments/IdentityN	IdentityNmoments/Sum:output:0moments/Sum:output:0*
T
2*+
_gradient_op_typeCustomGradient-45229*8
_output_shapes&
$:Q:Qg
moments/Identity_1Identitymoments/Sum_1:output:0*
T0*&
_output_shapes
:Q?
moments/IdentityN_1	IdentityNmoments/Sum_1:output:0moments/Sum_1:output:0*
T
2*+
_gradient_op_typeCustomGradient-45233*8
_output_shapes&
$:Q:QQ
moments/Identity_2Identitymoments/Cast:y:0*
T0*
_output_shapes
: ?
moments/IdentityN_2	IdentityNmoments/Cast:y:0moments/Cast:y:0*
T
2*+
_gradient_op_typeCustomGradient-45237*
_output_shapes
: : E
moments/Shape_1Shapeinputs*
T0*
_output_shapes
:g
moments/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:i
moments/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
moments/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
moments/strided_slice_1StridedSlicemoments/Shape_1:output:0&moments/strided_slice_1/stack:output:0(moments/strided_slice_1/stack_1:output:0(moments/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskE
moments/Shape_2Shapeinputs*
T0*
_output_shapes
:g
moments/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:i
moments/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
moments/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
moments/strided_slice_2StridedSlicemoments/Shape_2:output:0&moments/strided_slice_2/stack:output:0(moments/strided_slice_2/stack_1:output:0(moments/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
moments/Rank/packedPack moments/strided_slice_1:output:0 moments/strided_slice_2:output:0*
N*
T0*
_output_shapes
:N
moments/RankConst*
_output_shapes
: *
dtype0*
value	B :U
moments/range/startConst*
_output_shapes
: *
dtype0*
value	B : U
moments/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :?
moments/rangeRangemoments/range/start:output:0moments/Rank:output:0moments/range/delta:output:0*
_output_shapes
:?
moments/Prod/inputPack moments/strided_slice_1:output:0 moments/strided_slice_2:output:0*
N*
T0*
_output_shapes
:j
moments/ProdProdmoments/Prod/input:output:0moments/range:output:0*
T0*
_output_shapes
: ]
moments/Cast_1Castmoments/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: e
moments/mulMulmoments/Cast_1:y:0moments/IdentityN_2:output:0*
T0*
_output_shapes
: x
moments/truedivRealDivmoments/IdentityN:output:0moments/mul:z:0*
T0*&
_output_shapes
:Q|
moments/truediv_1RealDivmoments/IdentityN_1:output:0moments/mul:z:0*
T0*&
_output_shapes
:Q`
moments/Square_1Squaremoments/truediv:z:0*
T0*&
_output_shapes
:Qp
moments/subSubmoments/truediv_1:z:0moments/Square_1:y:0*
T0*&
_output_shapes
:Qm
moments/SqueezeSqueezemoments/truediv:z:0*
T0*
_output_shapes
:Q*
squeeze_dims
 k
moments/Squeeze_1Squeezemoments/sub:z:0*
T0*
_output_shapes
:Q*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:Q*
dtype0?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:Qx
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:Q?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:Q*
dtype0?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:Q~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:Q?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:QP
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:Q~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:Q*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:Q}
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????Qh
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:Qv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:Q*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:Q?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*A
_output_shapes/
-:+???????????????????????????Q|
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????Q?
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????Q: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????Q
 
_user_specified_nameinputs
?
b
)__inference_dropout_2_layer_call_fn_45309

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????Q* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_43524w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????Q`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????Q22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????Q
 
_user_specified_nameinputs
?
\
"__inference_internal_grad_fn_45984
result_grads_0
result_grads_1

identity_1E
IdentityIdentityresult_grads_0*
T0*
_output_shapes
: ?
	IdentityN	IdentityNresult_grads_0result_grads_0*
T
2*+
_gradient_op_typeCustomGradient-45979*
_output_shapes
: : K

Identity_1IdentityIdentityN:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0*
_input_shapes
: : :F B

_output_shapes
: 
(
_user_specified_nameresult_grads_0:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_1
?F
?
U__inference_sync_batch_normalization_3_layer_call_and_return_conditional_losses_43212

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOpr
moments/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          ?
moments/SumSuminputs&moments/Sum/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(l
moments/SquareSquareinputs*
T0*A
_output_shapes/
-:+???????????????????????????t
moments/Sum_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          ?
moments/Sum_1Summoments/Square:y:0(moments/Sum_1/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(C
moments/ShapeShapeinputs*
T0*
_output_shapes
:e
moments/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
moments/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
moments/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
moments/strided_sliceStridedSlicemoments/Shape:output:0$moments/strided_slice/stack:output:0&moments/strided_slice/stack_1:output:0&moments/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
moments/CastCastmoments/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: c
moments/IdentityIdentitymoments/Sum:output:0*
T0*&
_output_shapes
:?
moments/IdentityN	IdentityNmoments/Sum:output:0moments/Sum:output:0*
T
2*+
_gradient_op_typeCustomGradient-43152*8
_output_shapes&
$::g
moments/Identity_1Identitymoments/Sum_1:output:0*
T0*&
_output_shapes
:?
moments/IdentityN_1	IdentityNmoments/Sum_1:output:0moments/Sum_1:output:0*
T
2*+
_gradient_op_typeCustomGradient-43156*8
_output_shapes&
$::Q
moments/Identity_2Identitymoments/Cast:y:0*
T0*
_output_shapes
: ?
moments/IdentityN_2	IdentityNmoments/Cast:y:0moments/Cast:y:0*
T
2*+
_gradient_op_typeCustomGradient-43160*
_output_shapes
: : E
moments/Shape_1Shapeinputs*
T0*
_output_shapes
:g
moments/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:i
moments/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
moments/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
moments/strided_slice_1StridedSlicemoments/Shape_1:output:0&moments/strided_slice_1/stack:output:0(moments/strided_slice_1/stack_1:output:0(moments/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskE
moments/Shape_2Shapeinputs*
T0*
_output_shapes
:g
moments/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:i
moments/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
moments/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
moments/strided_slice_2StridedSlicemoments/Shape_2:output:0&moments/strided_slice_2/stack:output:0(moments/strided_slice_2/stack_1:output:0(moments/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
moments/Rank/packedPack moments/strided_slice_1:output:0 moments/strided_slice_2:output:0*
N*
T0*
_output_shapes
:N
moments/RankConst*
_output_shapes
: *
dtype0*
value	B :U
moments/range/startConst*
_output_shapes
: *
dtype0*
value	B : U
moments/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :?
moments/rangeRangemoments/range/start:output:0moments/Rank:output:0moments/range/delta:output:0*
_output_shapes
:?
moments/Prod/inputPack moments/strided_slice_1:output:0 moments/strided_slice_2:output:0*
N*
T0*
_output_shapes
:j
moments/ProdProdmoments/Prod/input:output:0moments/range:output:0*
T0*
_output_shapes
: ]
moments/Cast_1Castmoments/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: e
moments/mulMulmoments/Cast_1:y:0moments/IdentityN_2:output:0*
T0*
_output_shapes
: x
moments/truedivRealDivmoments/IdentityN:output:0moments/mul:z:0*
T0*&
_output_shapes
:|
moments/truediv_1RealDivmoments/IdentityN_1:output:0moments/mul:z:0*
T0*&
_output_shapes
:`
moments/Square_1Squaremoments/truediv:z:0*
T0*&
_output_shapes
:p
moments/subSubmoments/truediv_1:z:0moments/Square_1:y:0*
T0*&
_output_shapes
:m
moments/SqueezeSqueezemoments/truediv:z:0*
T0*
_output_shapes
:*
squeeze_dims
 k
moments/Squeeze_1Squeezemoments/sub:z:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:}
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*A
_output_shapes/
-:+???????????????????????????|
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*A
_output_shapes/
-:+????????????????????????????
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
? 
?
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_45368

inputsB
(conv2d_transpose_readvariableop_resource:Q-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:Q*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+????????????????????????????
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????Q: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????Q
 
_user_specified_nameinputs
?
b
D__inference_dropout_2_layer_call_and_return_conditional_losses_45314

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????Qc

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????Q"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????Q:W S
/
_output_shapes
:?????????Q
 
_user_specified_nameinputs
?
\
"__inference_internal_grad_fn_45844
result_grads_0
result_grads_1

identity_1U
IdentityIdentityresult_grads_0*
T0*&
_output_shapes
:?
	IdentityN	IdentityNresult_grads_0result_grads_0*
T
2*+
_gradient_op_typeCustomGradient-45839*8
_output_shapes&
$::[

Identity_1IdentityIdentityN:output:0*
T0*&
_output_shapes
:"!

identity_1Identity_1:output:0*7
_input_shapes&
$:::V R
&
_output_shapes
:
(
_user_specified_nameresult_grads_0:VR
&
_output_shapes
:
(
_user_specified_nameresult_grads_1
?
?
U__inference_sync_batch_normalization_1_layer_call_and_return_conditional_losses_45016

inputs0
!batchnorm_readvariableop_resource:	?4
%batchnorm_mul_readvariableop_resource:	?2
#batchnorm_readvariableop_1_resource:	?2
#batchnorm_readvariableop_2_resource:	?
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?~
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*B
_output_shapes0
.:,????????????????????????????{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:??
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*B
_output_shapes0
.:,????????????????????????????}
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
\
"__inference_internal_grad_fn_45674
result_grads_0
result_grads_1

identity_1V
IdentityIdentityresult_grads_0*
T0*'
_output_shapes
:??
	IdentityN	IdentityNresult_grads_0result_grads_0*
T
2*+
_gradient_op_typeCustomGradient-45669*:
_output_shapes(
&:?:?\

Identity_1IdentityIdentityN:output:0*
T0*'
_output_shapes
:?"!

identity_1Identity_1:output:0*9
_input_shapes(
&:?:?:W S
'
_output_shapes
:?
(
_user_specified_nameresult_grads_0:WS
'
_output_shapes
:?
(
_user_specified_nameresult_grads_1
?
?
S__inference_sync_batch_normalization_layer_call_and_return_conditional_losses_44809

inputs0
!batchnorm_readvariableop_resource:	?[4
%batchnorm_mul_readvariableop_resource:	?[2
#batchnorm_readvariableop_1_resource:	?[2
#batchnorm_readvariableop_2_resource:	?[
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOpw
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?[*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:x
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?[Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?[
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?[*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?[d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????[{
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:?[*
dtype0s
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?[{
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:?[*
dtype0s
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?[s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????[c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:??????????[?
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????[: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????[
 
_user_specified_nameinputs
?
\
"__inference_internal_grad_fn_45874
result_grads_0
result_grads_1

identity_1N
IdentityIdentityresult_grads_0*
T0*
_output_shapes
:	?[?
	IdentityN	IdentityNresult_grads_0result_grads_0*
T
2*+
_gradient_op_typeCustomGradient-45869**
_output_shapes
:	?[:	?[T

Identity_1IdentityIdentityN:output:0*
T0*
_output_shapes
:	?["!

identity_1Identity_1:output:0*)
_input_shapes
:	?[:	?[:O K

_output_shapes
:	?[
(
_user_specified_nameresult_grads_0:OK

_output_shapes
:	?[
(
_user_specified_nameresult_grads_1
?
?
*__inference_sequential_layer_call_fn_43852
dense_input
unknown:
??[
	unknown_0:	?[
	unknown_1:	?[
	unknown_2:	?[
	unknown_3:	?[
	unknown_4:	?[%
	unknown_5:		??
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?
	unknown_9:	?

unknown_10:	?%

unknown_11:		Q?

unknown_12:Q

unknown_13:Q

unknown_14:Q

unknown_15:Q

unknown_16:Q$

unknown_17:Q

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:$

unknown_23:

unknown_24:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*4
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_43740w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
(
_output_shapes
:??????????
%
_user_specified_namedense_input
?	
a
B__inference_dropout_layer_call_and_return_conditional_losses_43588

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *???e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????[C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????[*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??u<?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????[p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????[j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????[Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????["
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????[:P L
(
_output_shapes
:??????????[
 
_user_specified_nameinputs
?
b
D__inference_dropout_3_layer_call_and_return_conditional_losses_43412

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????  c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????  "!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????  :W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
\
"__inference_internal_grad_fn_45934
result_grads_0
result_grads_1

identity_1U
IdentityIdentityresult_grads_0*
T0*&
_output_shapes
:Q?
	IdentityN	IdentityNresult_grads_0result_grads_0*
T
2*+
_gradient_op_typeCustomGradient-45929*8
_output_shapes&
$:Q:Q[

Identity_1IdentityIdentityN:output:0*
T0*&
_output_shapes
:Q"!

identity_1Identity_1:output:0*7
_input_shapes&
$:Q:Q:V R
&
_output_shapes
:Q
(
_user_specified_nameresult_grads_0:VR
&
_output_shapes
:Q
(
_user_specified_nameresult_grads_1
?
C
'__inference_dropout_layer_call_fn_44887

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????[* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_43312a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????["
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????[:P L
(
_output_shapes
:??????????[
 
_user_specified_nameinputs
?
?
%__inference_dense_layer_call_fn_44753

inputs
unknown:
??[
	unknown_0:	?[
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????[*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_43285p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????[`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
\
"__inference_internal_grad_fn_45724
result_grads_0
result_grads_1

identity_1U
IdentityIdentityresult_grads_0*
T0*&
_output_shapes
:?
	IdentityN	IdentityNresult_grads_0result_grads_0*
T
2*+
_gradient_op_typeCustomGradient-45719*8
_output_shapes&
$::[

Identity_1IdentityIdentityN:output:0*
T0*&
_output_shapes
:"!

identity_1Identity_1:output:0*7
_input_shapes&
$:::V R
&
_output_shapes
:
(
_user_specified_nameresult_grads_0:VR
&
_output_shapes
:
(
_user_specified_nameresult_grads_1
?
\
"__inference_internal_grad_fn_45654
result_grads_0
result_grads_1

identity_1E
IdentityIdentityresult_grads_0*
T0*
_output_shapes
: ?
	IdentityN	IdentityNresult_grads_0result_grads_0*
T
2*+
_gradient_op_typeCustomGradient-45649*
_output_shapes
: : K

Identity_1IdentityIdentityN:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0*
_input_shapes
: : :F B

_output_shapes
: 
(
_user_specified_nameresult_grads_0:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_1
?
\
"__inference_internal_grad_fn_45924
result_grads_0
result_grads_1

identity_1E
IdentityIdentityresult_grads_0*
T0*
_output_shapes
: ?
	IdentityN	IdentityNresult_grads_0result_grads_0*
T
2*+
_gradient_op_typeCustomGradient-45919*
_output_shapes
: : K

Identity_1IdentityIdentityN:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0*
_input_shapes
: : :F B

_output_shapes
: 
(
_user_specified_nameresult_grads_0:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_1
?	
?
:__inference_sync_batch_normalization_3_layer_call_fn_45381

inputs
unknown:
	unknown_0:
	unknown_1:
	unknown_2:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+???????????????????????????*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *^
fYRW
U__inference_sync_batch_normalization_3_layer_call_and_return_conditional_losses_43125?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
d
H__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_45498

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:?????????  *
alpha%???>g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:?????????  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????  :W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?!
?
M__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_45568

inputsB
(conv2d_transpose_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????p
SigmoidSigmoidBiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????t
IdentityIdentitySigmoid:y:0^NoOp*
T0*A
_output_shapes/
-:+????????????????????????????
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
\
"__inference_internal_grad_fn_45814
result_grads_0
result_grads_1

identity_1U
IdentityIdentityresult_grads_0*
T0*&
_output_shapes
:Q?
	IdentityN	IdentityNresult_grads_0result_grads_0*
T
2*+
_gradient_op_typeCustomGradient-45809*8
_output_shapes&
$:Q:Q[

Identity_1IdentityIdentityN:output:0*
T0*&
_output_shapes
:Q"!

identity_1Identity_1:output:0*7
_input_shapes&
$:Q:Q:V R
&
_output_shapes
:Q
(
_user_specified_nameresult_grads_0:VR
&
_output_shapes
:Q
(
_user_specified_nameresult_grads_1
?
d
H__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_43349

inputs
identity`
	LeakyRelu	LeakyReluinputs*0
_output_shapes
:??????????*
alpha%???>h
IdentityIdentityLeakyRelu:activations:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
*__inference_sequential_layer_call_fn_44173

inputs
unknown:
??[
	unknown_0:	?[
	unknown_1:	?[
	unknown_2:	?[
	unknown_3:	?[
	unknown_4:	?[%
	unknown_5:		??
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?
	unknown_9:	?

unknown_10:	?%

unknown_11:		Q?

unknown_12:Q

unknown_13:Q

unknown_14:Q

unknown_15:Q

unknown_16:Q$

unknown_17:Q

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:$

unknown_23:

unknown_24:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*4
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *N
fIRG
E__inference_sequential_layer_call_and_return_conditional_losses_43740w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
F__inference_leaky_re_lu_layer_call_and_return_conditional_losses_43305

inputs
identityX
	LeakyRelu	LeakyReluinputs*(
_output_shapes
:??????????[*
alpha%???>`
IdentityIdentityLeakyRelu:activations:0*
T0*(
_output_shapes
:??????????["
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????[:P L
(
_output_shapes
:??????????[
 
_user_specified_nameinputs
?]
?
E__inference_sequential_layer_call_and_return_conditional_losses_43740

inputs
dense_43669:
??[
dense_43671:	?[-
sync_batch_normalization_43674:	?[-
sync_batch_normalization_43676:	?[-
sync_batch_normalization_43678:	?[-
sync_batch_normalization_43680:	?[2
conv2d_transpose_43686:		??%
conv2d_transpose_43688:	?/
 sync_batch_normalization_1_43691:	?/
 sync_batch_normalization_1_43693:	?/
 sync_batch_normalization_1_43695:	?/
 sync_batch_normalization_1_43697:	?3
conv2d_transpose_1_43702:		Q?&
conv2d_transpose_1_43704:Q.
 sync_batch_normalization_2_43707:Q.
 sync_batch_normalization_2_43709:Q.
 sync_batch_normalization_2_43711:Q.
 sync_batch_normalization_2_43713:Q2
conv2d_transpose_2_43718:Q&
conv2d_transpose_2_43720:.
 sync_batch_normalization_3_43723:.
 sync_batch_normalization_3_43725:.
 sync_batch_normalization_3_43727:.
 sync_batch_normalization_3_43729:2
conv2d_transpose_3_43734:&
conv2d_transpose_3_43736:
identity??(conv2d_transpose/StatefulPartitionedCall?*conv2d_transpose_1/StatefulPartitionedCall?*conv2d_transpose_2/StatefulPartitionedCall?*conv2d_transpose_3/StatefulPartitionedCall?dense/StatefulPartitionedCall?dropout/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?!dropout_2/StatefulPartitionedCall?!dropout_3/StatefulPartitionedCall?0sync_batch_normalization/StatefulPartitionedCall?2sync_batch_normalization_1/StatefulPartitionedCall?2sync_batch_normalization_2/StatefulPartitionedCall?2sync_batch_normalization_3/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCallinputsdense_43669dense_43671*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????[*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_43285?
0sync_batch_normalization/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0sync_batch_normalization_43674sync_batch_normalization_43676sync_batch_normalization_43678sync_batch_normalization_43680*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????[*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *\
fWRU
S__inference_sync_batch_normalization_layer_call_and_return_conditional_losses_42714?
leaky_re_lu/PartitionedCallPartitionedCall9sync_batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????[* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_leaky_re_lu_layer_call_and_return_conditional_losses_43305?
dropout/StatefulPartitionedCallStatefulPartitionedCall$leaky_re_lu/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????[* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_43588?
reshape/PartitionedCallPartitionedCall(dropout/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_reshape_layer_call_and_return_conditional_losses_43328?
(conv2d_transpose/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0conv2d_transpose_43686conv2d_transpose_43688*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *T
fORM
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_42762?
2sync_batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall1conv2d_transpose/StatefulPartitionedCall:output:0 sync_batch_normalization_1_43691 sync_batch_normalization_1_43693 sync_batch_normalization_1_43695 sync_batch_normalization_1_43697*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *^
fYRW
U__inference_sync_batch_normalization_1_layer_call_and_return_conditional_losses_42880?
leaky_re_lu_1/PartitionedCallPartitionedCall;sync_batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *Q
fLRJ
H__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_43349?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_1/PartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_43553?
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0conv2d_transpose_1_43702conv2d_transpose_1_43704*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????Q*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *V
fQRO
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_42928?
2sync_batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_1/StatefulPartitionedCall:output:0 sync_batch_normalization_2_43707 sync_batch_normalization_2_43709 sync_batch_normalization_2_43711 sync_batch_normalization_2_43713*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????Q*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *^
fYRW
U__inference_sync_batch_normalization_2_layer_call_and_return_conditional_losses_43046?
leaky_re_lu_2/PartitionedCallPartitionedCall;sync_batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????Q* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *Q
fLRJ
H__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_43377?
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_2/PartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????Q* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_43524?
*conv2d_transpose_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0conv2d_transpose_2_43718conv2d_transpose_2_43720*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *V
fQRO
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_43094?
2sync_batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_2/StatefulPartitionedCall:output:0 sync_batch_normalization_3_43723 sync_batch_normalization_3_43725 sync_batch_normalization_3_43727 sync_batch_normalization_3_43729*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *^
fYRW
U__inference_sync_batch_normalization_3_layer_call_and_return_conditional_losses_43212?
leaky_re_lu_3/PartitionedCallPartitionedCall;sync_batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *Q
fLRJ
H__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_43405?
!dropout_3/StatefulPartitionedCallStatefulPartitionedCall&leaky_re_lu_3/PartitionedCall:output:0"^dropout_2/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_43495?
*conv2d_transpose_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_3/StatefulPartitionedCall:output:0conv2d_transpose_3_43734conv2d_transpose_3_43736*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *V
fQRO
M__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_43261?
IdentityIdentity3conv2d_transpose_3/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@@?
NoOpNoOp)^conv2d_transpose/StatefulPartitionedCall+^conv2d_transpose_1/StatefulPartitionedCall+^conv2d_transpose_2/StatefulPartitionedCall+^conv2d_transpose_3/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall"^dropout_3/StatefulPartitionedCall1^sync_batch_normalization/StatefulPartitionedCall3^sync_batch_normalization_1/StatefulPartitionedCall3^sync_batch_normalization_2/StatefulPartitionedCall3^sync_batch_normalization_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : 2T
(conv2d_transpose/StatefulPartitionedCall(conv2d_transpose/StatefulPartitionedCall2X
*conv2d_transpose_1/StatefulPartitionedCall*conv2d_transpose_1/StatefulPartitionedCall2X
*conv2d_transpose_2/StatefulPartitionedCall*conv2d_transpose_2/StatefulPartitionedCall2X
*conv2d_transpose_3/StatefulPartitionedCall*conv2d_transpose_3/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2F
!dropout_3/StatefulPartitionedCall!dropout_3/StatefulPartitionedCall2d
0sync_batch_normalization/StatefulPartitionedCall0sync_batch_normalization/StatefulPartitionedCall2h
2sync_batch_normalization_1/StatefulPartitionedCall2sync_batch_normalization_1/StatefulPartitionedCall2h
2sync_batch_normalization_2/StatefulPartitionedCall2sync_batch_normalization_2/StatefulPartitionedCall2h
2sync_batch_normalization_3/StatefulPartitionedCall2sync_batch_normalization_3/StatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
? 
?
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_43094

inputsB
(conv2d_transpose_readvariableop_resource:Q-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:Q*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????y
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+????????????????????????????
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????Q: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????Q
 
_user_specified_nameinputs
?	
?
@__inference_dense_layer_call_and_return_conditional_losses_44763

inputs2
matmul_readvariableop_resource:
??[.
biasadd_readvariableop_resource:	?[
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??[*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????[s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?[*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????[`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??????????[w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
\
"__inference_internal_grad_fn_45914
result_grads_0
result_grads_1

identity_1V
IdentityIdentityresult_grads_0*
T0*'
_output_shapes
:??
	IdentityN	IdentityNresult_grads_0result_grads_0*
T
2*+
_gradient_op_typeCustomGradient-45909*:
_output_shapes(
&:?:?\

Identity_1IdentityIdentityN:output:0*
T0*'
_output_shapes
:?"!

identity_1Identity_1:output:0*9
_input_shapes(
&:?:?:W S
'
_output_shapes
:?
(
_user_specified_nameresult_grads_0:WS
'
_output_shapes
:?
(
_user_specified_nameresult_grads_1
?
`
B__inference_dropout_layer_call_and_return_conditional_losses_43312

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????[\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????["!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????[:P L
(
_output_shapes
:??????????[
 
_user_specified_nameinputs
? 
?
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_45169

inputsC
(conv2d_transpose_readvariableop_resource:		Q?-
biasadd_readvariableop_resource:Q
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :Qy
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:		Q?*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????Q*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:Q*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????Qy
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????Q?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,????????????????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
C
'__inference_reshape_layer_call_fn_44914

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_reshape_layer_call_and_return_conditional_losses_43328i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????[:P L
(
_output_shapes
:??????????[
 
_user_specified_nameinputs
?
\
"__inference_internal_grad_fn_45684
result_grads_0
result_grads_1

identity_1E
IdentityIdentityresult_grads_0*
T0*
_output_shapes
: ?
	IdentityN	IdentityNresult_grads_0result_grads_0*
T
2*+
_gradient_op_typeCustomGradient-45679*
_output_shapes
: : K

Identity_1IdentityIdentityN:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0*
_input_shapes
: : :F B

_output_shapes
: 
(
_user_specified_nameresult_grads_0:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_1
?
?
#__inference_signature_wrapper_44059
dense_input
unknown:
??[
	unknown_0:	?[
	unknown_1:	?[
	unknown_2:	?[
	unknown_3:	?[
	unknown_4:	?[%
	unknown_5:		??
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?
	unknown_9:	?

unknown_10:	?%

unknown_11:		Q?

unknown_12:Q

unknown_13:Q

unknown_14:Q

unknown_15:Q

unknown_16:Q$

unknown_17:Q

unknown_18:

unknown_19:

unknown_20:

unknown_21:

unknown_22:$

unknown_23:

unknown_24:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24*&
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*<
_read_only_resource_inputs
	
*2
config_proto" 

CPU

GPU2 *0J 8? *)
f$R"
 __inference__wrapped_model_42614w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
(
_output_shapes
:??????????
%
_user_specified_namedense_input
?W
?
E__inference_sequential_layer_call_and_return_conditional_losses_43926
dense_input
dense_43855:
??[
dense_43857:	?[-
sync_batch_normalization_43860:	?[-
sync_batch_normalization_43862:	?[-
sync_batch_normalization_43864:	?[-
sync_batch_normalization_43866:	?[2
conv2d_transpose_43872:		??%
conv2d_transpose_43874:	?/
 sync_batch_normalization_1_43877:	?/
 sync_batch_normalization_1_43879:	?/
 sync_batch_normalization_1_43881:	?/
 sync_batch_normalization_1_43883:	?3
conv2d_transpose_1_43888:		Q?&
conv2d_transpose_1_43890:Q.
 sync_batch_normalization_2_43893:Q.
 sync_batch_normalization_2_43895:Q.
 sync_batch_normalization_2_43897:Q.
 sync_batch_normalization_2_43899:Q2
conv2d_transpose_2_43904:Q&
conv2d_transpose_2_43906:.
 sync_batch_normalization_3_43909:.
 sync_batch_normalization_3_43911:.
 sync_batch_normalization_3_43913:.
 sync_batch_normalization_3_43915:2
conv2d_transpose_3_43920:&
conv2d_transpose_3_43922:
identity??(conv2d_transpose/StatefulPartitionedCall?*conv2d_transpose_1/StatefulPartitionedCall?*conv2d_transpose_2/StatefulPartitionedCall?*conv2d_transpose_3/StatefulPartitionedCall?dense/StatefulPartitionedCall?0sync_batch_normalization/StatefulPartitionedCall?2sync_batch_normalization_1/StatefulPartitionedCall?2sync_batch_normalization_2/StatefulPartitionedCall?2sync_batch_normalization_3/StatefulPartitionedCall?
dense/StatefulPartitionedCallStatefulPartitionedCalldense_inputdense_43855dense_43857*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????[*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_43285?
0sync_batch_normalization/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0sync_batch_normalization_43860sync_batch_normalization_43862sync_batch_normalization_43864sync_batch_normalization_43866*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????[*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *\
fWRU
S__inference_sync_batch_normalization_layer_call_and_return_conditional_losses_42638?
leaky_re_lu/PartitionedCallPartitionedCall9sync_batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????[* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_leaky_re_lu_layer_call_and_return_conditional_losses_43305?
dropout/PartitionedCallPartitionedCall$leaky_re_lu/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????[* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_43312?
reshape/PartitionedCallPartitionedCall dropout/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_reshape_layer_call_and_return_conditional_losses_43328?
(conv2d_transpose/StatefulPartitionedCallStatefulPartitionedCall reshape/PartitionedCall:output:0conv2d_transpose_43872conv2d_transpose_43874*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *T
fORM
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_42762?
2sync_batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall1conv2d_transpose/StatefulPartitionedCall:output:0 sync_batch_normalization_1_43877 sync_batch_normalization_1_43879 sync_batch_normalization_1_43881 sync_batch_normalization_1_43883*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *^
fYRW
U__inference_sync_batch_normalization_1_layer_call_and_return_conditional_losses_42793?
leaky_re_lu_1/PartitionedCallPartitionedCall;sync_batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *Q
fLRJ
H__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_43349?
dropout_1/PartitionedCallPartitionedCall&leaky_re_lu_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_43356?
*conv2d_transpose_1/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0conv2d_transpose_1_43888conv2d_transpose_1_43890*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????Q*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *V
fQRO
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_42928?
2sync_batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_1/StatefulPartitionedCall:output:0 sync_batch_normalization_2_43893 sync_batch_normalization_2_43895 sync_batch_normalization_2_43897 sync_batch_normalization_2_43899*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????Q*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *^
fYRW
U__inference_sync_batch_normalization_2_layer_call_and_return_conditional_losses_42959?
leaky_re_lu_2/PartitionedCallPartitionedCall;sync_batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????Q* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *Q
fLRJ
H__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_43377?
dropout_2/PartitionedCallPartitionedCall&leaky_re_lu_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????Q* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_dropout_2_layer_call_and_return_conditional_losses_43384?
*conv2d_transpose_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0conv2d_transpose_2_43904conv2d_transpose_2_43906*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  *$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *V
fQRO
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_43094?
2sync_batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_2/StatefulPartitionedCall:output:0 sync_batch_normalization_3_43909 sync_batch_normalization_3_43911 sync_batch_normalization_3_43913 sync_batch_normalization_3_43915*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  *&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *^
fYRW
U__inference_sync_batch_normalization_3_layer_call_and_return_conditional_losses_43125?
leaky_re_lu_3/PartitionedCallPartitionedCall;sync_batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *Q
fLRJ
H__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_43405?
dropout_3/PartitionedCallPartitionedCall&leaky_re_lu_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????  * 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_dropout_3_layer_call_and_return_conditional_losses_43412?
*conv2d_transpose_3/StatefulPartitionedCallStatefulPartitionedCall"dropout_3/PartitionedCall:output:0conv2d_transpose_3_43920conv2d_transpose_3_43922*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@@*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *V
fQRO
M__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_43261?
IdentityIdentity3conv2d_transpose_3/StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:?????????@@?
NoOpNoOp)^conv2d_transpose/StatefulPartitionedCall+^conv2d_transpose_1/StatefulPartitionedCall+^conv2d_transpose_2/StatefulPartitionedCall+^conv2d_transpose_3/StatefulPartitionedCall^dense/StatefulPartitionedCall1^sync_batch_normalization/StatefulPartitionedCall3^sync_batch_normalization_1/StatefulPartitionedCall3^sync_batch_normalization_2/StatefulPartitionedCall3^sync_batch_normalization_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : 2T
(conv2d_transpose/StatefulPartitionedCall(conv2d_transpose/StatefulPartitionedCall2X
*conv2d_transpose_1/StatefulPartitionedCall*conv2d_transpose_1/StatefulPartitionedCall2X
*conv2d_transpose_2/StatefulPartitionedCall*conv2d_transpose_2/StatefulPartitionedCall2X
*conv2d_transpose_3/StatefulPartitionedCall*conv2d_transpose_3/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2d
0sync_batch_normalization/StatefulPartitionedCall0sync_batch_normalization/StatefulPartitionedCall2h
2sync_batch_normalization_1/StatefulPartitionedCall2sync_batch_normalization_1/StatefulPartitionedCall2h
2sync_batch_normalization_2/StatefulPartitionedCall2sync_batch_normalization_2/StatefulPartitionedCall2h
2sync_batch_normalization_3/StatefulPartitionedCall2sync_batch_normalization_3/StatefulPartitionedCall:U Q
(
_output_shapes
:??????????
%
_user_specified_namedense_input
?
\
"__inference_internal_grad_fn_45634
result_grads_0
result_grads_1

identity_1N
IdentityIdentityresult_grads_0*
T0*
_output_shapes
:	?[?
	IdentityN	IdentityNresult_grads_0result_grads_0*
T
2*+
_gradient_op_typeCustomGradient-45629**
_output_shapes
:	?[:	?[T

Identity_1IdentityIdentityN:output:0*
T0*
_output_shapes
:	?["!

identity_1Identity_1:output:0*)
_input_shapes
:	?[:	?[:O K

_output_shapes
:	?[
(
_user_specified_nameresult_grads_0:OK

_output_shapes
:	?[
(
_user_specified_nameresult_grads_1
?
\
"__inference_internal_grad_fn_45804
result_grads_0
result_grads_1

identity_1E
IdentityIdentityresult_grads_0*
T0*
_output_shapes
: ?
	IdentityN	IdentityNresult_grads_0result_grads_0*
T
2*+
_gradient_op_typeCustomGradient-45799*
_output_shapes
: : K

Identity_1IdentityIdentityN:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0*
_input_shapes
: : :F B

_output_shapes
: 
(
_user_specified_nameresult_grads_0:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_1
?F
?
U__inference_sync_batch_normalization_3_layer_call_and_return_conditional_losses_45488

inputs5
'assignmovingavg_readvariableop_resource:7
)assignmovingavg_1_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:/
!batchnorm_readvariableop_resource:
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOpr
moments/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          ?
moments/SumSuminputs&moments/Sum/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(l
moments/SquareSquareinputs*
T0*A
_output_shapes/
-:+???????????????????????????t
moments/Sum_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          ?
moments/Sum_1Summoments/Square:y:0(moments/Sum_1/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(C
moments/ShapeShapeinputs*
T0*
_output_shapes
:e
moments/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
moments/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
moments/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
moments/strided_sliceStridedSlicemoments/Shape:output:0$moments/strided_slice/stack:output:0&moments/strided_slice/stack_1:output:0&moments/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
moments/CastCastmoments/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: c
moments/IdentityIdentitymoments/Sum:output:0*
T0*&
_output_shapes
:?
moments/IdentityN	IdentityNmoments/Sum:output:0moments/Sum:output:0*
T
2*+
_gradient_op_typeCustomGradient-45428*8
_output_shapes&
$::g
moments/Identity_1Identitymoments/Sum_1:output:0*
T0*&
_output_shapes
:?
moments/IdentityN_1	IdentityNmoments/Sum_1:output:0moments/Sum_1:output:0*
T
2*+
_gradient_op_typeCustomGradient-45432*8
_output_shapes&
$::Q
moments/Identity_2Identitymoments/Cast:y:0*
T0*
_output_shapes
: ?
moments/IdentityN_2	IdentityNmoments/Cast:y:0moments/Cast:y:0*
T
2*+
_gradient_op_typeCustomGradient-45436*
_output_shapes
: : E
moments/Shape_1Shapeinputs*
T0*
_output_shapes
:g
moments/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:i
moments/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
moments/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
moments/strided_slice_1StridedSlicemoments/Shape_1:output:0&moments/strided_slice_1/stack:output:0(moments/strided_slice_1/stack_1:output:0(moments/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskE
moments/Shape_2Shapeinputs*
T0*
_output_shapes
:g
moments/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:i
moments/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
moments/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
moments/strided_slice_2StridedSlicemoments/Shape_2:output:0&moments/strided_slice_2/stack:output:0(moments/strided_slice_2/stack_1:output:0(moments/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
moments/Rank/packedPack moments/strided_slice_1:output:0 moments/strided_slice_2:output:0*
N*
T0*
_output_shapes
:N
moments/RankConst*
_output_shapes
: *
dtype0*
value	B :U
moments/range/startConst*
_output_shapes
: *
dtype0*
value	B : U
moments/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :?
moments/rangeRangemoments/range/start:output:0moments/Rank:output:0moments/range/delta:output:0*
_output_shapes
:?
moments/Prod/inputPack moments/strided_slice_1:output:0 moments/strided_slice_2:output:0*
N*
T0*
_output_shapes
:j
moments/ProdProdmoments/Prod/input:output:0moments/range:output:0*
T0*
_output_shapes
: ]
moments/Cast_1Castmoments/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: e
moments/mulMulmoments/Cast_1:y:0moments/IdentityN_2:output:0*
T0*
_output_shapes
: x
moments/truedivRealDivmoments/IdentityN:output:0moments/mul:z:0*
T0*&
_output_shapes
:|
moments/truediv_1RealDivmoments/IdentityN_1:output:0moments/mul:z:0*
T0*&
_output_shapes
:`
moments/Square_1Squaremoments/truediv:z:0*
T0*&
_output_shapes
:p
moments/subSubmoments/truediv_1:z:0moments/Square_1:y:0*
T0*&
_output_shapes
:m
moments/SqueezeSqueezemoments/truediv:z:0*
T0*
_output_shapes
:*
squeeze_dims
 k
moments/Squeeze_1Squeezemoments/sub:z:0*
T0*
_output_shapes
:*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:x
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:}
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????h
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:v
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*A
_output_shapes/
-:+???????????????????????????|
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*A
_output_shapes/
-:+????????????????????????????
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
\
"__inference_internal_grad_fn_45864
result_grads_0
result_grads_1

identity_1E
IdentityIdentityresult_grads_0*
T0*
_output_shapes
: ?
	IdentityN	IdentityNresult_grads_0result_grads_0*
T
2*+
_gradient_op_typeCustomGradient-45859*
_output_shapes
: : K

Identity_1IdentityIdentityN:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0*
_input_shapes
: : :F B

_output_shapes
: 
(
_user_specified_nameresult_grads_0:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_1
?
?
U__inference_sync_batch_normalization_3_layer_call_and_return_conditional_losses_45414

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:}
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*A
_output_shapes/
-:+???????????????????????????|
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*A
_output_shapes/
-:+????????????????????????????
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?

c
D__inference_dropout_3_layer_call_and_return_conditional_losses_45525

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *???l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????  C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????  *
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??u<?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????  w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????  q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????  a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????  "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????  :W S
/
_output_shapes
:?????????  
 
_user_specified_nameinputs
?
^
B__inference_reshape_layer_call_and_return_conditional_losses_43328

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :R
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :??
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:m
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:??????????a
IdentityIdentityReshape:output:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????[:P L
(
_output_shapes
:??????????[
 
_user_specified_nameinputs
? 
?
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_42928

inputsC
(conv2d_transpose_readvariableop_resource:		Q?-
biasadd_readvariableop_resource:Q
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :Qy
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*'
_output_shapes
:		Q?*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????Q*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:Q*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????Qy
IdentityIdentityBiasAdd:output:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????Q?
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,????????????????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
\
"__inference_internal_grad_fn_45694
result_grads_0
result_grads_1

identity_1U
IdentityIdentityresult_grads_0*
T0*&
_output_shapes
:Q?
	IdentityN	IdentityNresult_grads_0result_grads_0*
T
2*+
_gradient_op_typeCustomGradient-45689*8
_output_shapes&
$:Q:Q[

Identity_1IdentityIdentityN:output:0*
T0*&
_output_shapes
:Q"!

identity_1Identity_1:output:0*7
_input_shapes&
$:Q:Q:V R
&
_output_shapes
:Q
(
_user_specified_nameresult_grads_0:VR
&
_output_shapes
:Q
(
_user_specified_nameresult_grads_1
?
?
8__inference_sync_batch_normalization_layer_call_fn_44789

inputs
unknown:	?[
	unknown_0:	?[
	unknown_1:	?[
	unknown_2:	?[
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????[*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *\
fWRU
S__inference_sync_batch_normalization_layer_call_and_return_conditional_losses_42714p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????[`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????[: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????[
 
_user_specified_nameinputs
?
b
D__inference_dropout_1_layer_call_and_return_conditional_losses_43356

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:??????????d

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
? 
?
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_42762

inputsD
(conv2d_transpose_readvariableop_resource:		??.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: J
stack/3Const*
_output_shapes
: *
dtype0*
value
B :?y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*(
_output_shapes
:		??*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*B
_output_shapes0
.:,????????????????????????????*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*B
_output_shapes0
.:,????????????????????????????z
IdentityIdentityBiasAdd:output:0^NoOp*
T0*B
_output_shapes0
.:,?????????????????????????????
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,????????????????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
??
?
__inference__traced_save_46029
file_prefix+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop=
9savev2_sync_batch_normalization_gamma_read_readvariableop<
8savev2_sync_batch_normalization_beta_read_readvariableopC
?savev2_sync_batch_normalization_moving_mean_read_readvariableopG
Csavev2_sync_batch_normalization_moving_variance_read_readvariableop6
2savev2_conv2d_transpose_kernel_read_readvariableop4
0savev2_conv2d_transpose_bias_read_readvariableop?
;savev2_sync_batch_normalization_1_gamma_read_readvariableop>
:savev2_sync_batch_normalization_1_beta_read_readvariableopE
Asavev2_sync_batch_normalization_1_moving_mean_read_readvariableopI
Esavev2_sync_batch_normalization_1_moving_variance_read_readvariableop8
4savev2_conv2d_transpose_1_kernel_read_readvariableop6
2savev2_conv2d_transpose_1_bias_read_readvariableop?
;savev2_sync_batch_normalization_2_gamma_read_readvariableop>
:savev2_sync_batch_normalization_2_beta_read_readvariableopE
Asavev2_sync_batch_normalization_2_moving_mean_read_readvariableopI
Esavev2_sync_batch_normalization_2_moving_variance_read_readvariableop8
4savev2_conv2d_transpose_2_kernel_read_readvariableop6
2savev2_conv2d_transpose_2_bias_read_readvariableop?
;savev2_sync_batch_normalization_3_gamma_read_readvariableop>
:savev2_sync_batch_normalization_3_beta_read_readvariableopE
Asavev2_sync_batch_normalization_3_moving_mean_read_readvariableopI
Esavev2_sync_batch_normalization_3_moving_variance_read_readvariableop8
4savev2_conv2d_transpose_3_kernel_read_readvariableop6
2savev2_conv2d_transpose_3_bias_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop9savev2_sync_batch_normalization_gamma_read_readvariableop8savev2_sync_batch_normalization_beta_read_readvariableop?savev2_sync_batch_normalization_moving_mean_read_readvariableopCsavev2_sync_batch_normalization_moving_variance_read_readvariableop2savev2_conv2d_transpose_kernel_read_readvariableop0savev2_conv2d_transpose_bias_read_readvariableop;savev2_sync_batch_normalization_1_gamma_read_readvariableop:savev2_sync_batch_normalization_1_beta_read_readvariableopAsavev2_sync_batch_normalization_1_moving_mean_read_readvariableopEsavev2_sync_batch_normalization_1_moving_variance_read_readvariableop4savev2_conv2d_transpose_1_kernel_read_readvariableop2savev2_conv2d_transpose_1_bias_read_readvariableop;savev2_sync_batch_normalization_2_gamma_read_readvariableop:savev2_sync_batch_normalization_2_beta_read_readvariableopAsavev2_sync_batch_normalization_2_moving_mean_read_readvariableopEsavev2_sync_batch_normalization_2_moving_variance_read_readvariableop4savev2_conv2d_transpose_2_kernel_read_readvariableop2savev2_conv2d_transpose_2_bias_read_readvariableop;savev2_sync_batch_normalization_3_gamma_read_readvariableop:savev2_sync_batch_normalization_3_beta_read_readvariableopAsavev2_sync_batch_normalization_3_moving_mean_read_readvariableopEsavev2_sync_batch_normalization_3_moving_variance_read_readvariableop4savev2_conv2d_transpose_3_kernel_read_readvariableop2savev2_conv2d_transpose_3_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *)
dtypes
2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
?: :
??[:?[:?[:?[:?[:?[:		??:?:?:?:?:?:		Q?:Q:Q:Q:Q:Q:Q:::::::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
??[:!

_output_shapes	
:?[:!

_output_shapes	
:?[:!

_output_shapes	
:?[:!

_output_shapes	
:?[:!

_output_shapes	
:?[:.*
(
_output_shapes
:		??:!

_output_shapes	
:?:!	

_output_shapes	
:?:!


_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:-)
'
_output_shapes
:		Q?: 

_output_shapes
:Q: 

_output_shapes
:Q: 

_output_shapes
:Q: 

_output_shapes
:Q: 

_output_shapes
:Q:,(
&
_output_shapes
:Q: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
::

_output_shapes
: 
?
b
)__inference_dropout_1_layer_call_fn_45110

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_43553x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
\
"__inference_internal_grad_fn_45744
result_grads_0
result_grads_1

identity_1E
IdentityIdentityresult_grads_0*
T0*
_output_shapes
: ?
	IdentityN	IdentityNresult_grads_0result_grads_0*
T
2*+
_gradient_op_typeCustomGradient-45739*
_output_shapes
: : K

Identity_1IdentityIdentityN:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0*
_input_shapes
: : :F B

_output_shapes
: 
(
_user_specified_nameresult_grads_0:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_1
?
d
H__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_45299

inputs
identity_
	LeakyRelu	LeakyReluinputs*/
_output_shapes
:?????????Q*
alpha%???>g
IdentityIdentityLeakyRelu:activations:0*
T0*/
_output_shapes
:?????????Q"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????Q:W S
/
_output_shapes
:?????????Q
 
_user_specified_nameinputs
?9
?
S__inference_sync_batch_normalization_layer_call_and_return_conditional_losses_42714

inputs6
'assignmovingavg_readvariableop_resource:	?[8
)assignmovingavg_1_readvariableop_resource:	?[4
%batchnorm_mul_readvariableop_resource:	?[0
!batchnorm_readvariableop_resource:	?[
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOpg
moments/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: }
moments/SumSuminputs&moments/Sum/reduction_indices:output:0*
T0*
_output_shapes
:	?[*
	keep_dims(S
moments/SquareSquareinputs*
T0*(
_output_shapes
:??????????[i
moments/Sum_1/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
moments/Sum_1Summoments/Square:y:0(moments/Sum_1/reduction_indices:output:0*
T0*
_output_shapes
:	?[*
	keep_dims(C
moments/ShapeShapeinputs*
T0*
_output_shapes
:e
moments/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
moments/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
moments/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
moments/strided_sliceStridedSlicemoments/Shape:output:0$moments/strided_slice/stack:output:0&moments/strided_slice/stack_1:output:0&moments/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
moments/CastCastmoments/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: \
moments/IdentityIdentitymoments/Sum:output:0*
T0*
_output_shapes
:	?[?
moments/IdentityN	IdentityNmoments/Sum:output:0moments/Sum:output:0*
T
2*+
_gradient_op_typeCustomGradient-42665**
_output_shapes
:	?[:	?[`
moments/Identity_1Identitymoments/Sum_1:output:0*
T0*
_output_shapes
:	?[?
moments/IdentityN_1	IdentityNmoments/Sum_1:output:0moments/Sum_1:output:0*
T
2*+
_gradient_op_typeCustomGradient-42669**
_output_shapes
:	?[:	?[Q
moments/Identity_2Identitymoments/Cast:y:0*
T0*
_output_shapes
: ?
moments/IdentityN_2	IdentityNmoments/Cast:y:0moments/Cast:y:0*
T
2*+
_gradient_op_typeCustomGradient-42673*
_output_shapes
: : U
moments/Rank/ConstConst*
_output_shapes
: *
dtype0*
valueB N
moments/RankConst*
_output_shapes
: *
dtype0*
value	B :U
moments/range/startConst*
_output_shapes
: *
dtype0*
value	B : U
moments/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :?
moments/rangeRangemoments/range/start:output:0moments/Rank:output:0moments/range/delta:output:0*
_output_shapes
:U
moments/Prod/inputConst*
_output_shapes
: *
dtype0*
valueB j
moments/ProdProdmoments/Prod/input:output:0moments/range:output:0*
T0*
_output_shapes
: h
moments/mulMulmoments/Prod:output:0moments/IdentityN_2:output:0*
T0*
_output_shapes
: q
moments/truedivRealDivmoments/IdentityN:output:0moments/mul:z:0*
T0*
_output_shapes
:	?[u
moments/truediv_1RealDivmoments/IdentityN_1:output:0moments/mul:z:0*
T0*
_output_shapes
:	?[Y
moments/Square_1Squaremoments/truediv:z:0*
T0*
_output_shapes
:	?[i
moments/subSubmoments/truediv_1:z:0moments/Square_1:y:0*
T0*
_output_shapes
:	?[l
moments/SqueezeSqueezemoments/truediv:z:0*
T0*
_output_shapes	
:?[*
squeeze_dims
 j
moments/Squeeze_1Squeezemoments/sub:z:0*
T0*
_output_shapes	
:?[*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes	
:?[*
dtype0?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes	
:?[y
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?[?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?[*
dtype0?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?[
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?[?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:r
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:?[Q
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:?[
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:?[*
dtype0u
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?[d
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:??????????[i
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:?[w
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:?[*
dtype0q
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?[s
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????[c
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*(
_output_shapes
:??????????[?
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????[: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????[
 
_user_specified_nameinputs
?
\
"__inference_internal_grad_fn_45854
result_grads_0
result_grads_1

identity_1U
IdentityIdentityresult_grads_0*
T0*&
_output_shapes
:?
	IdentityN	IdentityNresult_grads_0result_grads_0*
T
2*+
_gradient_op_typeCustomGradient-45849*8
_output_shapes&
$::[

Identity_1IdentityIdentityN:output:0*
T0*&
_output_shapes
:"!

identity_1Identity_1:output:0*7
_input_shapes&
$:::V R
&
_output_shapes
:
(
_user_specified_nameresult_grads_0:VR
&
_output_shapes
:
(
_user_specified_nameresult_grads_1
?m
?
!__inference__traced_restore_46117
file_prefix1
assignvariableop_dense_kernel:
??[,
assignvariableop_1_dense_bias:	?[@
1assignvariableop_2_sync_batch_normalization_gamma:	?[?
0assignvariableop_3_sync_batch_normalization_beta:	?[F
7assignvariableop_4_sync_batch_normalization_moving_mean:	?[J
;assignvariableop_5_sync_batch_normalization_moving_variance:	?[F
*assignvariableop_6_conv2d_transpose_kernel:		??7
(assignvariableop_7_conv2d_transpose_bias:	?B
3assignvariableop_8_sync_batch_normalization_1_gamma:	?A
2assignvariableop_9_sync_batch_normalization_1_beta:	?I
:assignvariableop_10_sync_batch_normalization_1_moving_mean:	?M
>assignvariableop_11_sync_batch_normalization_1_moving_variance:	?H
-assignvariableop_12_conv2d_transpose_1_kernel:		Q?9
+assignvariableop_13_conv2d_transpose_1_bias:QB
4assignvariableop_14_sync_batch_normalization_2_gamma:QA
3assignvariableop_15_sync_batch_normalization_2_beta:QH
:assignvariableop_16_sync_batch_normalization_2_moving_mean:QL
>assignvariableop_17_sync_batch_normalization_2_moving_variance:QG
-assignvariableop_18_conv2d_transpose_2_kernel:Q9
+assignvariableop_19_conv2d_transpose_2_bias:B
4assignvariableop_20_sync_batch_normalization_3_gamma:A
3assignvariableop_21_sync_batch_normalization_3_beta:H
:assignvariableop_22_sync_batch_normalization_3_moving_mean:L
>assignvariableop_23_sync_batch_normalization_3_moving_variance:G
-assignvariableop_24_conv2d_transpose_3_kernel:9
+assignvariableop_25_conv2d_transpose_3_bias:
identity_27??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-7/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-7/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*I
value@B>B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapesn
l:::::::::::::::::::::::::::*)
dtypes
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOpassignvariableop_dense_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp1assignvariableop_2_sync_batch_normalization_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp0assignvariableop_3_sync_batch_normalization_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp7assignvariableop_4_sync_batch_normalization_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp;assignvariableop_5_sync_batch_normalization_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp*assignvariableop_6_conv2d_transpose_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp(assignvariableop_7_conv2d_transpose_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp3assignvariableop_8_sync_batch_normalization_1_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp2assignvariableop_9_sync_batch_normalization_1_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp:assignvariableop_10_sync_batch_normalization_1_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp>assignvariableop_11_sync_batch_normalization_1_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp-assignvariableop_12_conv2d_transpose_1_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOp+assignvariableop_13_conv2d_transpose_1_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOp4assignvariableop_14_sync_batch_normalization_2_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp3assignvariableop_15_sync_batch_normalization_2_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOp:assignvariableop_16_sync_batch_normalization_2_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp>assignvariableop_17_sync_batch_normalization_2_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp-assignvariableop_18_conv2d_transpose_2_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp+assignvariableop_19_conv2d_transpose_2_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp4assignvariableop_20_sync_batch_normalization_3_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp3assignvariableop_21_sync_batch_normalization_3_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp:assignvariableop_22_sync_batch_normalization_3_moving_meanIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp>assignvariableop_23_sync_batch_normalization_3_moving_varianceIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp-assignvariableop_24_conv2d_transpose_3_kernelIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp+assignvariableop_25_conv2d_transpose_3_biasIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_26Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_27IdentityIdentity_26:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_27Identity_27:output:0*I
_input_shapes8
6: : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
\
"__inference_internal_grad_fn_45964
result_grads_0
result_grads_1

identity_1U
IdentityIdentityresult_grads_0*
T0*&
_output_shapes
:?
	IdentityN	IdentityNresult_grads_0result_grads_0*
T
2*+
_gradient_op_typeCustomGradient-45959*8
_output_shapes&
$::[

Identity_1IdentityIdentityN:output:0*
T0*&
_output_shapes
:"!

identity_1Identity_1:output:0*7
_input_shapes&
$:::V R
&
_output_shapes
:
(
_user_specified_nameresult_grads_0:VR
&
_output_shapes
:
(
_user_specified_nameresult_grads_1
?
\
"__inference_internal_grad_fn_45954
result_grads_0
result_grads_1

identity_1E
IdentityIdentityresult_grads_0*
T0*
_output_shapes
: ?
	IdentityN	IdentityNresult_grads_0result_grads_0*
T
2*+
_gradient_op_typeCustomGradient-45949*
_output_shapes
: : K

Identity_1IdentityIdentityN:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0*
_input_shapes
: : :F B

_output_shapes
: 
(
_user_specified_nameresult_grads_0:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_1
?
b
F__inference_leaky_re_lu_layer_call_and_return_conditional_losses_44882

inputs
identityX
	LeakyRelu	LeakyReluinputs*(
_output_shapes
:??????????[*
alpha%???>`
IdentityIdentityLeakyRelu:activations:0*
T0*(
_output_shapes
:??????????["
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????[:P L
(
_output_shapes
:??????????[
 
_user_specified_nameinputs
?
\
"__inference_internal_grad_fn_45784
result_grads_0
result_grads_1

identity_1V
IdentityIdentityresult_grads_0*
T0*'
_output_shapes
:??
	IdentityN	IdentityNresult_grads_0result_grads_0*
T
2*+
_gradient_op_typeCustomGradient-45779*:
_output_shapes(
&:?:?\

Identity_1IdentityIdentityN:output:0*
T0*'
_output_shapes
:?"!

identity_1Identity_1:output:0*9
_input_shapes(
&:?:?:W S
'
_output_shapes
:?
(
_user_specified_nameresult_grads_0:WS
'
_output_shapes
:?
(
_user_specified_nameresult_grads_1
?
E
)__inference_dropout_1_layer_call_fn_45105

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *M
fHRF
D__inference_dropout_1_layer_call_and_return_conditional_losses_43356i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
b
D__inference_dropout_2_layer_call_and_return_conditional_losses_43384

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:?????????Qc

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:?????????Q"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????Q:W S
/
_output_shapes
:?????????Q
 
_user_specified_nameinputs
?
\
"__inference_internal_grad_fn_45974
result_grads_0
result_grads_1

identity_1U
IdentityIdentityresult_grads_0*
T0*&
_output_shapes
:?
	IdentityN	IdentityNresult_grads_0result_grads_0*
T
2*+
_gradient_op_typeCustomGradient-45969*8
_output_shapes&
$::[

Identity_1IdentityIdentityN:output:0*
T0*&
_output_shapes
:"!

identity_1Identity_1:output:0*7
_input_shapes&
$:::V R
&
_output_shapes
:
(
_user_specified_nameresult_grads_0:VR
&
_output_shapes
:
(
_user_specified_nameresult_grads_1
?F
?
U__inference_sync_batch_normalization_2_layer_call_and_return_conditional_losses_43046

inputs5
'assignmovingavg_readvariableop_resource:Q7
)assignmovingavg_1_readvariableop_resource:Q3
%batchnorm_mul_readvariableop_resource:Q/
!batchnorm_readvariableop_resource:Q
identity??AssignMovingAvg?AssignMovingAvg/ReadVariableOp?AssignMovingAvg_1? AssignMovingAvg_1/ReadVariableOp?batchnorm/ReadVariableOp?batchnorm/mul/ReadVariableOpr
moments/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          ?
moments/SumSuminputs&moments/Sum/reduction_indices:output:0*
T0*&
_output_shapes
:Q*
	keep_dims(l
moments/SquareSquareinputs*
T0*A
_output_shapes/
-:+???????????????????????????Qt
moments/Sum_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          ?
moments/Sum_1Summoments/Square:y:0(moments/Sum_1/reduction_indices:output:0*
T0*&
_output_shapes
:Q*
	keep_dims(C
moments/ShapeShapeinputs*
T0*
_output_shapes
:e
moments/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
moments/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
moments/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
moments/strided_sliceStridedSlicemoments/Shape:output:0$moments/strided_slice/stack:output:0&moments/strided_slice/stack_1:output:0&moments/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
moments/CastCastmoments/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: c
moments/IdentityIdentitymoments/Sum:output:0*
T0*&
_output_shapes
:Q?
moments/IdentityN	IdentityNmoments/Sum:output:0moments/Sum:output:0*
T
2*+
_gradient_op_typeCustomGradient-42986*8
_output_shapes&
$:Q:Qg
moments/Identity_1Identitymoments/Sum_1:output:0*
T0*&
_output_shapes
:Q?
moments/IdentityN_1	IdentityNmoments/Sum_1:output:0moments/Sum_1:output:0*
T
2*+
_gradient_op_typeCustomGradient-42990*8
_output_shapes&
$:Q:QQ
moments/Identity_2Identitymoments/Cast:y:0*
T0*
_output_shapes
: ?
moments/IdentityN_2	IdentityNmoments/Cast:y:0moments/Cast:y:0*
T
2*+
_gradient_op_typeCustomGradient-42994*
_output_shapes
: : E
moments/Shape_1Shapeinputs*
T0*
_output_shapes
:g
moments/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:i
moments/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
moments/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
moments/strided_slice_1StridedSlicemoments/Shape_1:output:0&moments/strided_slice_1/stack:output:0(moments/strided_slice_1/stack_1:output:0(moments/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskE
moments/Shape_2Shapeinputs*
T0*
_output_shapes
:g
moments/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:i
moments/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
moments/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
moments/strided_slice_2StridedSlicemoments/Shape_2:output:0&moments/strided_slice_2/stack:output:0(moments/strided_slice_2/stack_1:output:0(moments/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
moments/Rank/packedPack moments/strided_slice_1:output:0 moments/strided_slice_2:output:0*
N*
T0*
_output_shapes
:N
moments/RankConst*
_output_shapes
: *
dtype0*
value	B :U
moments/range/startConst*
_output_shapes
: *
dtype0*
value	B : U
moments/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :?
moments/rangeRangemoments/range/start:output:0moments/Rank:output:0moments/range/delta:output:0*
_output_shapes
:?
moments/Prod/inputPack moments/strided_slice_1:output:0 moments/strided_slice_2:output:0*
N*
T0*
_output_shapes
:j
moments/ProdProdmoments/Prod/input:output:0moments/range:output:0*
T0*
_output_shapes
: ]
moments/Cast_1Castmoments/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: e
moments/mulMulmoments/Cast_1:y:0moments/IdentityN_2:output:0*
T0*
_output_shapes
: x
moments/truedivRealDivmoments/IdentityN:output:0moments/mul:z:0*
T0*&
_output_shapes
:Q|
moments/truediv_1RealDivmoments/IdentityN_1:output:0moments/mul:z:0*
T0*&
_output_shapes
:Q`
moments/Square_1Squaremoments/truediv:z:0*
T0*&
_output_shapes
:Qp
moments/subSubmoments/truediv_1:z:0moments/Square_1:y:0*
T0*&
_output_shapes
:Qm
moments/SqueezeSqueezemoments/truediv:z:0*
T0*
_output_shapes
:Q*
squeeze_dims
 k
moments/Squeeze_1Squeezemoments/sub:z:0*
T0*
_output_shapes
:Q*
squeeze_dims
 Z
AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
AssignMovingAvg/ReadVariableOpReadVariableOp'assignmovingavg_readvariableop_resource*
_output_shapes
:Q*
dtype0?
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0*
T0*
_output_shapes
:Qx
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:Q?
AssignMovingAvgAssignSubVariableOp'assignmovingavg_readvariableop_resourceAssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0\
AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
 AssignMovingAvg_1/ReadVariableOpReadVariableOp)assignmovingavg_1_readvariableop_resource*
_output_shapes
:Q*
dtype0?
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0*
T0*
_output_shapes
:Q~
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:Q?
AssignMovingAvg_1AssignSubVariableOp)assignmovingavg_1_readvariableop_resourceAssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:q
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes
:QP
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:Q~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:Q*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:Q}
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????Qh
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes
:Qv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:Q*
dtype0p
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:Q?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*A
_output_shapes/
-:+???????????????????????????Q|
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????Q?
NoOpNoOp^AssignMovingAvg^AssignMovingAvg/ReadVariableOp^AssignMovingAvg_1!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????Q: : : : 2"
AssignMovingAvgAssignMovingAvg2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2&
AssignMovingAvg_1AssignMovingAvg_12D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????Q
 
_user_specified_nameinputs
?

c
D__inference_dropout_2_layer_call_and_return_conditional_losses_43524

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *???l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:?????????QC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:?????????Q*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??u<?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????Qw
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????Qq
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:?????????Qa
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????Q"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????Q:W S
/
_output_shapes
:?????????Q
 
_user_specified_nameinputs
?
?
0__inference_conv2d_transpose_layer_call_fn_44937

inputs#
unknown:		??
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *T
fORM
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_42762?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*E
_input_shapes4
2:,????????????????????????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
?
U__inference_sync_batch_normalization_3_layer_call_and_return_conditional_losses_43125

inputs/
!batchnorm_readvariableop_resource:3
%batchnorm_mul_readvariableop_resource:1
#batchnorm_readvariableop_1_resource:1
#batchnorm_readvariableop_2_resource:
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:P
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:}
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????z
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:z
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*A
_output_shapes/
-:+???????????????????????????|
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*A
_output_shapes/
-:+????????????????????????????
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?	
?
:__inference_sync_batch_normalization_1_layer_call_fn_44983

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*&
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *^
fYRW
U__inference_sync_batch_normalization_1_layer_call_and_return_conditional_losses_42793?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?
`
'__inference_dropout_layer_call_fn_44892

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????[* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_43588p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????[`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????[22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????[
 
_user_specified_nameinputs
?	
a
B__inference_dropout_layer_call_and_return_conditional_losses_44909

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *???e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????[C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????[*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??u<?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????[p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????[j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????[Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????["
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????[:P L
(
_output_shapes
:??????????[
 
_user_specified_nameinputs
?
I
-__inference_leaky_re_lu_1_layer_call_fn_45095

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *Q
fLRJ
H__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_43349i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
\
"__inference_internal_grad_fn_45644
result_grads_0
result_grads_1

identity_1N
IdentityIdentityresult_grads_0*
T0*
_output_shapes
:	?[?
	IdentityN	IdentityNresult_grads_0result_grads_0*
T
2*+
_gradient_op_typeCustomGradient-45639**
_output_shapes
:	?[:	?[T

Identity_1IdentityIdentityN:output:0*
T0*
_output_shapes
:	?["!

identity_1Identity_1:output:0*)
_input_shapes
:	?[:	?[:O K

_output_shapes
:	?[
(
_user_specified_nameresult_grads_0:OK

_output_shapes
:	?[
(
_user_specified_nameresult_grads_1
?!
?
M__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_43261

inputsB
(conv2d_transpose_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?conv2d_transpose/ReadVariableOp;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskG
mul/yConst*
_output_shapes
: *
dtype0*
value	B :U
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: I
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :Y
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: I
stack/3Const*
_output_shapes
: *
dtype0*
value	B :y
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:_
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0?
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+???????????????????????????*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+???????????????????????????p
SigmoidSigmoidBiasAdd:output:0*
T0*A
_output_shapes/
-:+???????????????????????????t
IdentityIdentitySigmoid:y:0^NoOp*
T0*A
_output_shapes/
-:+????????????????????????????
NoOpNoOp^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1:+???????????????????????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????
 
_user_specified_nameinputs
?
G
+__inference_leaky_re_lu_layer_call_fn_44877

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????[* 
_read_only_resource_inputs
 *2
config_proto" 

CPU

GPU2 *0J 8? *O
fJRH
F__inference_leaky_re_lu_layer_call_and_return_conditional_losses_43305a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????["
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????[:P L
(
_output_shapes
:??????????[
 
_user_specified_nameinputs
?
\
"__inference_internal_grad_fn_45704
result_grads_0
result_grads_1

identity_1U
IdentityIdentityresult_grads_0*
T0*&
_output_shapes
:Q?
	IdentityN	IdentityNresult_grads_0result_grads_0*
T
2*+
_gradient_op_typeCustomGradient-45699*8
_output_shapes&
$:Q:Q[

Identity_1IdentityIdentityN:output:0*
T0*&
_output_shapes
:Q"!

identity_1Identity_1:output:0*7
_input_shapes&
$:Q:Q:V R
&
_output_shapes
:Q
(
_user_specified_nameresult_grads_0:VR
&
_output_shapes
:Q
(
_user_specified_nameresult_grads_1
??
?
E__inference_sequential_layer_call_and_return_conditional_losses_44744

inputs8
$dense_matmul_readvariableop_resource:
??[4
%dense_biasadd_readvariableop_resource:	?[O
@sync_batch_normalization_assignmovingavg_readvariableop_resource:	?[Q
Bsync_batch_normalization_assignmovingavg_1_readvariableop_resource:	?[M
>sync_batch_normalization_batchnorm_mul_readvariableop_resource:	?[I
:sync_batch_normalization_batchnorm_readvariableop_resource:	?[U
9conv2d_transpose_conv2d_transpose_readvariableop_resource:		???
0conv2d_transpose_biasadd_readvariableop_resource:	?Q
Bsync_batch_normalization_1_assignmovingavg_readvariableop_resource:	?S
Dsync_batch_normalization_1_assignmovingavg_1_readvariableop_resource:	?O
@sync_batch_normalization_1_batchnorm_mul_readvariableop_resource:	?K
<sync_batch_normalization_1_batchnorm_readvariableop_resource:	?V
;conv2d_transpose_1_conv2d_transpose_readvariableop_resource:		Q?@
2conv2d_transpose_1_biasadd_readvariableop_resource:QP
Bsync_batch_normalization_2_assignmovingavg_readvariableop_resource:QR
Dsync_batch_normalization_2_assignmovingavg_1_readvariableop_resource:QN
@sync_batch_normalization_2_batchnorm_mul_readvariableop_resource:QJ
<sync_batch_normalization_2_batchnorm_readvariableop_resource:QU
;conv2d_transpose_2_conv2d_transpose_readvariableop_resource:Q@
2conv2d_transpose_2_biasadd_readvariableop_resource:P
Bsync_batch_normalization_3_assignmovingavg_readvariableop_resource:R
Dsync_batch_normalization_3_assignmovingavg_1_readvariableop_resource:N
@sync_batch_normalization_3_batchnorm_mul_readvariableop_resource:J
<sync_batch_normalization_3_batchnorm_readvariableop_resource:U
;conv2d_transpose_3_conv2d_transpose_readvariableop_resource:@
2conv2d_transpose_3_biasadd_readvariableop_resource:
identity??'conv2d_transpose/BiasAdd/ReadVariableOp?0conv2d_transpose/conv2d_transpose/ReadVariableOp?)conv2d_transpose_1/BiasAdd/ReadVariableOp?2conv2d_transpose_1/conv2d_transpose/ReadVariableOp?)conv2d_transpose_2/BiasAdd/ReadVariableOp?2conv2d_transpose_2/conv2d_transpose/ReadVariableOp?)conv2d_transpose_3/BiasAdd/ReadVariableOp?2conv2d_transpose_3/conv2d_transpose/ReadVariableOp?dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?(sync_batch_normalization/AssignMovingAvg?7sync_batch_normalization/AssignMovingAvg/ReadVariableOp?*sync_batch_normalization/AssignMovingAvg_1?9sync_batch_normalization/AssignMovingAvg_1/ReadVariableOp?1sync_batch_normalization/batchnorm/ReadVariableOp?5sync_batch_normalization/batchnorm/mul/ReadVariableOp?*sync_batch_normalization_1/AssignMovingAvg?9sync_batch_normalization_1/AssignMovingAvg/ReadVariableOp?,sync_batch_normalization_1/AssignMovingAvg_1?;sync_batch_normalization_1/AssignMovingAvg_1/ReadVariableOp?3sync_batch_normalization_1/batchnorm/ReadVariableOp?7sync_batch_normalization_1/batchnorm/mul/ReadVariableOp?*sync_batch_normalization_2/AssignMovingAvg?9sync_batch_normalization_2/AssignMovingAvg/ReadVariableOp?,sync_batch_normalization_2/AssignMovingAvg_1?;sync_batch_normalization_2/AssignMovingAvg_1/ReadVariableOp?3sync_batch_normalization_2/batchnorm/ReadVariableOp?7sync_batch_normalization_2/batchnorm/mul/ReadVariableOp?*sync_batch_normalization_3/AssignMovingAvg?9sync_batch_normalization_3/AssignMovingAvg/ReadVariableOp?,sync_batch_normalization_3/AssignMovingAvg_1?;sync_batch_normalization_3/AssignMovingAvg_1/ReadVariableOp?3sync_batch_normalization_3/batchnorm/ReadVariableOp?7sync_batch_normalization_3/batchnorm/mul/ReadVariableOp?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
??[*
dtype0v
dense/MatMulMatMulinputs#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????[
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:?[*
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????[?
6sync_batch_normalization/moments/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
$sync_batch_normalization/moments/SumSumdense/BiasAdd:output:0?sync_batch_normalization/moments/Sum/reduction_indices:output:0*
T0*
_output_shapes
:	?[*
	keep_dims(|
'sync_batch_normalization/moments/SquareSquaredense/BiasAdd:output:0*
T0*(
_output_shapes
:??????????[?
8sync_batch_normalization/moments/Sum_1/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: ?
&sync_batch_normalization/moments/Sum_1Sum+sync_batch_normalization/moments/Square:y:0Async_batch_normalization/moments/Sum_1/reduction_indices:output:0*
T0*
_output_shapes
:	?[*
	keep_dims(l
&sync_batch_normalization/moments/ShapeShapedense/BiasAdd:output:0*
T0*
_output_shapes
:~
4sync_batch_normalization/moments/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6sync_batch_normalization/moments/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6sync_batch_normalization/moments/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.sync_batch_normalization/moments/strided_sliceStridedSlice/sync_batch_normalization/moments/Shape:output:0=sync_batch_normalization/moments/strided_slice/stack:output:0?sync_batch_normalization/moments/strided_slice/stack_1:output:0?sync_batch_normalization/moments/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
%sync_batch_normalization/moments/CastCast7sync_batch_normalization/moments/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
)sync_batch_normalization/moments/IdentityIdentity-sync_batch_normalization/moments/Sum:output:0*
T0*
_output_shapes
:	?[?
*sync_batch_normalization/moments/IdentityN	IdentityN-sync_batch_normalization/moments/Sum:output:0-sync_batch_normalization/moments/Sum:output:0*
T
2*+
_gradient_op_typeCustomGradient-44362**
_output_shapes
:	?[:	?[?
+sync_batch_normalization/moments/Identity_1Identity/sync_batch_normalization/moments/Sum_1:output:0*
T0*
_output_shapes
:	?[?
,sync_batch_normalization/moments/IdentityN_1	IdentityN/sync_batch_normalization/moments/Sum_1:output:0/sync_batch_normalization/moments/Sum_1:output:0*
T
2*+
_gradient_op_typeCustomGradient-44366**
_output_shapes
:	?[:	?[?
+sync_batch_normalization/moments/Identity_2Identity)sync_batch_normalization/moments/Cast:y:0*
T0*
_output_shapes
: ?
,sync_batch_normalization/moments/IdentityN_2	IdentityN)sync_batch_normalization/moments/Cast:y:0)sync_batch_normalization/moments/Cast:y:0*
T
2*+
_gradient_op_typeCustomGradient-44370*
_output_shapes
: : n
+sync_batch_normalization/moments/Rank/ConstConst*
_output_shapes
: *
dtype0*
valueB g
%sync_batch_normalization/moments/RankConst*
_output_shapes
: *
dtype0*
value	B :n
,sync_batch_normalization/moments/range/startConst*
_output_shapes
: *
dtype0*
value	B : n
,sync_batch_normalization/moments/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :?
&sync_batch_normalization/moments/rangeRange5sync_batch_normalization/moments/range/start:output:0.sync_batch_normalization/moments/Rank:output:05sync_batch_normalization/moments/range/delta:output:0*
_output_shapes
:n
+sync_batch_normalization/moments/Prod/inputConst*
_output_shapes
: *
dtype0*
valueB ?
%sync_batch_normalization/moments/ProdProd4sync_batch_normalization/moments/Prod/input:output:0/sync_batch_normalization/moments/range:output:0*
T0*
_output_shapes
: ?
$sync_batch_normalization/moments/mulMul.sync_batch_normalization/moments/Prod:output:05sync_batch_normalization/moments/IdentityN_2:output:0*
T0*
_output_shapes
: ?
(sync_batch_normalization/moments/truedivRealDiv3sync_batch_normalization/moments/IdentityN:output:0(sync_batch_normalization/moments/mul:z:0*
T0*
_output_shapes
:	?[?
*sync_batch_normalization/moments/truediv_1RealDiv5sync_batch_normalization/moments/IdentityN_1:output:0(sync_batch_normalization/moments/mul:z:0*
T0*
_output_shapes
:	?[?
)sync_batch_normalization/moments/Square_1Square,sync_batch_normalization/moments/truediv:z:0*
T0*
_output_shapes
:	?[?
$sync_batch_normalization/moments/subSub.sync_batch_normalization/moments/truediv_1:z:0-sync_batch_normalization/moments/Square_1:y:0*
T0*
_output_shapes
:	?[?
(sync_batch_normalization/moments/SqueezeSqueeze,sync_batch_normalization/moments/truediv:z:0*
T0*
_output_shapes	
:?[*
squeeze_dims
 ?
*sync_batch_normalization/moments/Squeeze_1Squeeze(sync_batch_normalization/moments/sub:z:0*
T0*
_output_shapes	
:?[*
squeeze_dims
 s
.sync_batch_normalization/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
7sync_batch_normalization/AssignMovingAvg/ReadVariableOpReadVariableOp@sync_batch_normalization_assignmovingavg_readvariableop_resource*
_output_shapes	
:?[*
dtype0?
,sync_batch_normalization/AssignMovingAvg/subSub?sync_batch_normalization/AssignMovingAvg/ReadVariableOp:value:01sync_batch_normalization/moments/Squeeze:output:0*
T0*
_output_shapes	
:?[?
,sync_batch_normalization/AssignMovingAvg/mulMul0sync_batch_normalization/AssignMovingAvg/sub:z:07sync_batch_normalization/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:?[?
(sync_batch_normalization/AssignMovingAvgAssignSubVariableOp@sync_batch_normalization_assignmovingavg_readvariableop_resource0sync_batch_normalization/AssignMovingAvg/mul:z:08^sync_batch_normalization/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0u
0sync_batch_normalization/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
9sync_batch_normalization/AssignMovingAvg_1/ReadVariableOpReadVariableOpBsync_batch_normalization_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?[*
dtype0?
.sync_batch_normalization/AssignMovingAvg_1/subSubAsync_batch_normalization/AssignMovingAvg_1/ReadVariableOp:value:03sync_batch_normalization/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:?[?
.sync_batch_normalization/AssignMovingAvg_1/mulMul2sync_batch_normalization/AssignMovingAvg_1/sub:z:09sync_batch_normalization/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:?[?
*sync_batch_normalization/AssignMovingAvg_1AssignSubVariableOpBsync_batch_normalization_assignmovingavg_1_readvariableop_resource2sync_batch_normalization/AssignMovingAvg_1/mul:z:0:^sync_batch_normalization/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0m
(sync_batch_normalization/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
&sync_batch_normalization/batchnorm/addAddV23sync_batch_normalization/moments/Squeeze_1:output:01sync_batch_normalization/batchnorm/add/y:output:0*
T0*
_output_shapes	
:?[?
(sync_batch_normalization/batchnorm/RsqrtRsqrt*sync_batch_normalization/batchnorm/add:z:0*
T0*
_output_shapes	
:?[?
5sync_batch_normalization/batchnorm/mul/ReadVariableOpReadVariableOp>sync_batch_normalization_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?[*
dtype0?
&sync_batch_normalization/batchnorm/mulMul,sync_batch_normalization/batchnorm/Rsqrt:y:0=sync_batch_normalization/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:?[?
(sync_batch_normalization/batchnorm/mul_1Muldense/BiasAdd:output:0*sync_batch_normalization/batchnorm/mul:z:0*
T0*(
_output_shapes
:??????????[?
(sync_batch_normalization/batchnorm/mul_2Mul1sync_batch_normalization/moments/Squeeze:output:0*sync_batch_normalization/batchnorm/mul:z:0*
T0*
_output_shapes	
:?[?
1sync_batch_normalization/batchnorm/ReadVariableOpReadVariableOp:sync_batch_normalization_batchnorm_readvariableop_resource*
_output_shapes	
:?[*
dtype0?
&sync_batch_normalization/batchnorm/subSub9sync_batch_normalization/batchnorm/ReadVariableOp:value:0,sync_batch_normalization/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:?[?
(sync_batch_normalization/batchnorm/add_1AddV2,sync_batch_normalization/batchnorm/mul_1:z:0*sync_batch_normalization/batchnorm/sub:z:0*
T0*(
_output_shapes
:??????????[?
leaky_re_lu/LeakyRelu	LeakyRelu,sync_batch_normalization/batchnorm/add_1:z:0*(
_output_shapes
:??????????[*
alpha%???>Z
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????
dropout/dropout/MulMul#leaky_re_lu/LeakyRelu:activations:0dropout/dropout/Const:output:0*
T0*(
_output_shapes
:??????????[h
dropout/dropout/ShapeShape#leaky_re_lu/LeakyRelu:activations:0*
T0*
_output_shapes
:?
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????[*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??u<?
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????[?
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????[?
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*(
_output_shapes
:??????????[V
reshape/ShapeShapedropout/dropout/Mul_1:z:0*
T0*
_output_shapes
:e
reshape/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
reshape/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
reshape/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
reshape/strided_sliceStridedSlicereshape/Shape:output:0$reshape/strided_slice/stack:output:0&reshape/strided_slice/stack_1:output:0&reshape/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
reshape/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :Y
reshape/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Z
reshape/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value
B :??
reshape/Reshape/shapePackreshape/strided_slice:output:0 reshape/Reshape/shape/1:output:0 reshape/Reshape/shape/2:output:0 reshape/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
reshape/ReshapeReshapedropout/dropout/Mul_1:z:0reshape/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????^
conv2d_transpose/ShapeShapereshape/Reshape:output:0*
T0*
_output_shapes
:n
$conv2d_transpose/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&conv2d_transpose/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&conv2d_transpose/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
conv2d_transpose/strided_sliceStridedSliceconv2d_transpose/Shape:output:0-conv2d_transpose/strided_slice/stack:output:0/conv2d_transpose/strided_slice/stack_1:output:0/conv2d_transpose/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
conv2d_transpose/stack/1Const*
_output_shapes
: *
dtype0*
value	B :Z
conv2d_transpose/stack/2Const*
_output_shapes
: *
dtype0*
value	B :[
conv2d_transpose/stack/3Const*
_output_shapes
: *
dtype0*
value
B :??
conv2d_transpose/stackPack'conv2d_transpose/strided_slice:output:0!conv2d_transpose/stack/1:output:0!conv2d_transpose/stack/2:output:0!conv2d_transpose/stack/3:output:0*
N*
T0*
_output_shapes
:p
&conv2d_transpose/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv2d_transpose/strided_slice_1StridedSliceconv2d_transpose/stack:output:0/conv2d_transpose/strided_slice_1/stack:output:01conv2d_transpose/strided_slice_1/stack_1:output:01conv2d_transpose/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
0conv2d_transpose/conv2d_transpose/ReadVariableOpReadVariableOp9conv2d_transpose_conv2d_transpose_readvariableop_resource*(
_output_shapes
:		??*
dtype0?
!conv2d_transpose/conv2d_transposeConv2DBackpropInputconv2d_transpose/stack:output:08conv2d_transpose/conv2d_transpose/ReadVariableOp:value:0reshape/Reshape:output:0*
T0*0
_output_shapes
:??????????*
paddingSAME*
strides
?
'conv2d_transpose/BiasAdd/ReadVariableOpReadVariableOp0conv2d_transpose_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
conv2d_transpose/BiasAddBiasAdd*conv2d_transpose/conv2d_transpose:output:0/conv2d_transpose/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
8sync_batch_normalization_1/moments/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          ?
&sync_batch_normalization_1/moments/SumSum!conv2d_transpose/BiasAdd:output:0Async_batch_normalization_1/moments/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?*
	keep_dims(?
)sync_batch_normalization_1/moments/SquareSquare!conv2d_transpose/BiasAdd:output:0*
T0*0
_output_shapes
:???????????
:sync_batch_normalization_1/moments/Sum_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          ?
(sync_batch_normalization_1/moments/Sum_1Sum-sync_batch_normalization_1/moments/Square:y:0Csync_batch_normalization_1/moments/Sum_1/reduction_indices:output:0*
T0*'
_output_shapes
:?*
	keep_dims(y
(sync_batch_normalization_1/moments/ShapeShape!conv2d_transpose/BiasAdd:output:0*
T0*
_output_shapes
:?
6sync_batch_normalization_1/moments/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8sync_batch_normalization_1/moments/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8sync_batch_normalization_1/moments/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0sync_batch_normalization_1/moments/strided_sliceStridedSlice1sync_batch_normalization_1/moments/Shape:output:0?sync_batch_normalization_1/moments/strided_slice/stack:output:0Async_batch_normalization_1/moments/strided_slice/stack_1:output:0Async_batch_normalization_1/moments/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
'sync_batch_normalization_1/moments/CastCast9sync_batch_normalization_1/moments/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
+sync_batch_normalization_1/moments/IdentityIdentity/sync_batch_normalization_1/moments/Sum:output:0*
T0*'
_output_shapes
:??
,sync_batch_normalization_1/moments/IdentityN	IdentityN/sync_batch_normalization_1/moments/Sum:output:0/sync_batch_normalization_1/moments/Sum:output:0*
T
2*+
_gradient_op_typeCustomGradient-44459*:
_output_shapes(
&:?:??
-sync_batch_normalization_1/moments/Identity_1Identity1sync_batch_normalization_1/moments/Sum_1:output:0*
T0*'
_output_shapes
:??
.sync_batch_normalization_1/moments/IdentityN_1	IdentityN1sync_batch_normalization_1/moments/Sum_1:output:01sync_batch_normalization_1/moments/Sum_1:output:0*
T
2*+
_gradient_op_typeCustomGradient-44463*:
_output_shapes(
&:?:??
-sync_batch_normalization_1/moments/Identity_2Identity+sync_batch_normalization_1/moments/Cast:y:0*
T0*
_output_shapes
: ?
.sync_batch_normalization_1/moments/IdentityN_2	IdentityN+sync_batch_normalization_1/moments/Cast:y:0+sync_batch_normalization_1/moments/Cast:y:0*
T
2*+
_gradient_op_typeCustomGradient-44467*
_output_shapes
: : {
*sync_batch_normalization_1/moments/Shape_1Shape!conv2d_transpose/BiasAdd:output:0*
T0*
_output_shapes
:?
8sync_batch_normalization_1/moments/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
:sync_batch_normalization_1/moments/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
:sync_batch_normalization_1/moments/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
2sync_batch_normalization_1/moments/strided_slice_1StridedSlice3sync_batch_normalization_1/moments/Shape_1:output:0Async_batch_normalization_1/moments/strided_slice_1/stack:output:0Csync_batch_normalization_1/moments/strided_slice_1/stack_1:output:0Csync_batch_normalization_1/moments/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
*sync_batch_normalization_1/moments/Shape_2Shape!conv2d_transpose/BiasAdd:output:0*
T0*
_output_shapes
:?
8sync_batch_normalization_1/moments/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:?
:sync_batch_normalization_1/moments/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
:sync_batch_normalization_1/moments/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
2sync_batch_normalization_1/moments/strided_slice_2StridedSlice3sync_batch_normalization_1/moments/Shape_2:output:0Async_batch_normalization_1/moments/strided_slice_2/stack:output:0Csync_batch_normalization_1/moments/strided_slice_2/stack_1:output:0Csync_batch_normalization_1/moments/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
.sync_batch_normalization_1/moments/Rank/packedPack;sync_batch_normalization_1/moments/strided_slice_1:output:0;sync_batch_normalization_1/moments/strided_slice_2:output:0*
N*
T0*
_output_shapes
:i
'sync_batch_normalization_1/moments/RankConst*
_output_shapes
: *
dtype0*
value	B :p
.sync_batch_normalization_1/moments/range/startConst*
_output_shapes
: *
dtype0*
value	B : p
.sync_batch_normalization_1/moments/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :?
(sync_batch_normalization_1/moments/rangeRange7sync_batch_normalization_1/moments/range/start:output:00sync_batch_normalization_1/moments/Rank:output:07sync_batch_normalization_1/moments/range/delta:output:0*
_output_shapes
:?
-sync_batch_normalization_1/moments/Prod/inputPack;sync_batch_normalization_1/moments/strided_slice_1:output:0;sync_batch_normalization_1/moments/strided_slice_2:output:0*
N*
T0*
_output_shapes
:?
'sync_batch_normalization_1/moments/ProdProd6sync_batch_normalization_1/moments/Prod/input:output:01sync_batch_normalization_1/moments/range:output:0*
T0*
_output_shapes
: ?
)sync_batch_normalization_1/moments/Cast_1Cast0sync_batch_normalization_1/moments/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
&sync_batch_normalization_1/moments/mulMul-sync_batch_normalization_1/moments/Cast_1:y:07sync_batch_normalization_1/moments/IdentityN_2:output:0*
T0*
_output_shapes
: ?
*sync_batch_normalization_1/moments/truedivRealDiv5sync_batch_normalization_1/moments/IdentityN:output:0*sync_batch_normalization_1/moments/mul:z:0*
T0*'
_output_shapes
:??
,sync_batch_normalization_1/moments/truediv_1RealDiv7sync_batch_normalization_1/moments/IdentityN_1:output:0*sync_batch_normalization_1/moments/mul:z:0*
T0*'
_output_shapes
:??
+sync_batch_normalization_1/moments/Square_1Square.sync_batch_normalization_1/moments/truediv:z:0*
T0*'
_output_shapes
:??
&sync_batch_normalization_1/moments/subSub0sync_batch_normalization_1/moments/truediv_1:z:0/sync_batch_normalization_1/moments/Square_1:y:0*
T0*'
_output_shapes
:??
*sync_batch_normalization_1/moments/SqueezeSqueeze.sync_batch_normalization_1/moments/truediv:z:0*
T0*
_output_shapes	
:?*
squeeze_dims
 ?
,sync_batch_normalization_1/moments/Squeeze_1Squeeze*sync_batch_normalization_1/moments/sub:z:0*
T0*
_output_shapes	
:?*
squeeze_dims
 u
0sync_batch_normalization_1/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
9sync_batch_normalization_1/AssignMovingAvg/ReadVariableOpReadVariableOpBsync_batch_normalization_1_assignmovingavg_readvariableop_resource*
_output_shapes	
:?*
dtype0?
.sync_batch_normalization_1/AssignMovingAvg/subSubAsync_batch_normalization_1/AssignMovingAvg/ReadVariableOp:value:03sync_batch_normalization_1/moments/Squeeze:output:0*
T0*
_output_shapes	
:??
.sync_batch_normalization_1/AssignMovingAvg/mulMul2sync_batch_normalization_1/AssignMovingAvg/sub:z:09sync_batch_normalization_1/AssignMovingAvg/decay:output:0*
T0*
_output_shapes	
:??
*sync_batch_normalization_1/AssignMovingAvgAssignSubVariableOpBsync_batch_normalization_1_assignmovingavg_readvariableop_resource2sync_batch_normalization_1/AssignMovingAvg/mul:z:0:^sync_batch_normalization_1/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0w
2sync_batch_normalization_1/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
;sync_batch_normalization_1/AssignMovingAvg_1/ReadVariableOpReadVariableOpDsync_batch_normalization_1_assignmovingavg_1_readvariableop_resource*
_output_shapes	
:?*
dtype0?
0sync_batch_normalization_1/AssignMovingAvg_1/subSubCsync_batch_normalization_1/AssignMovingAvg_1/ReadVariableOp:value:05sync_batch_normalization_1/moments/Squeeze_1:output:0*
T0*
_output_shapes	
:??
0sync_batch_normalization_1/AssignMovingAvg_1/mulMul4sync_batch_normalization_1/AssignMovingAvg_1/sub:z:0;sync_batch_normalization_1/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes	
:??
,sync_batch_normalization_1/AssignMovingAvg_1AssignSubVariableOpDsync_batch_normalization_1_assignmovingavg_1_readvariableop_resource4sync_batch_normalization_1/AssignMovingAvg_1/mul:z:0<^sync_batch_normalization_1/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0o
*sync_batch_normalization_1/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
(sync_batch_normalization_1/batchnorm/addAddV25sync_batch_normalization_1/moments/Squeeze_1:output:03sync_batch_normalization_1/batchnorm/add/y:output:0*
T0*
_output_shapes	
:??
*sync_batch_normalization_1/batchnorm/RsqrtRsqrt,sync_batch_normalization_1/batchnorm/add:z:0*
T0*
_output_shapes	
:??
7sync_batch_normalization_1/batchnorm/mul/ReadVariableOpReadVariableOp@sync_batch_normalization_1_batchnorm_mul_readvariableop_resource*
_output_shapes	
:?*
dtype0?
(sync_batch_normalization_1/batchnorm/mulMul.sync_batch_normalization_1/batchnorm/Rsqrt:y:0?sync_batch_normalization_1/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:??
*sync_batch_normalization_1/batchnorm/mul_1Mul!conv2d_transpose/BiasAdd:output:0,sync_batch_normalization_1/batchnorm/mul:z:0*
T0*0
_output_shapes
:???????????
*sync_batch_normalization_1/batchnorm/mul_2Mul3sync_batch_normalization_1/moments/Squeeze:output:0,sync_batch_normalization_1/batchnorm/mul:z:0*
T0*
_output_shapes	
:??
3sync_batch_normalization_1/batchnorm/ReadVariableOpReadVariableOp<sync_batch_normalization_1_batchnorm_readvariableop_resource*
_output_shapes	
:?*
dtype0?
(sync_batch_normalization_1/batchnorm/subSub;sync_batch_normalization_1/batchnorm/ReadVariableOp:value:0.sync_batch_normalization_1/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:??
*sync_batch_normalization_1/batchnorm/add_1AddV2.sync_batch_normalization_1/batchnorm/mul_1:z:0,sync_batch_normalization_1/batchnorm/sub:z:0*
T0*0
_output_shapes
:???????????
leaky_re_lu_1/LeakyRelu	LeakyRelu.sync_batch_normalization_1/batchnorm/add_1:z:0*0
_output_shapes
:??????????*
alpha%???>\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????
dropout_1/dropout/MulMul%leaky_re_lu_1/LeakyRelu:activations:0 dropout_1/dropout/Const:output:0*
T0*0
_output_shapes
:??????????l
dropout_1/dropout/ShapeShape%leaky_re_lu_1/LeakyRelu:activations:0*
T0*
_output_shapes
:?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??u<?
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:???????????
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:???????????
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*0
_output_shapes
:??????????c
conv2d_transpose_1/ShapeShapedropout_1/dropout/Mul_1:z:0*
T0*
_output_shapes
:p
&conv2d_transpose_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv2d_transpose_1/strided_sliceStridedSlice!conv2d_transpose_1/Shape:output:0/conv2d_transpose_1/strided_slice/stack:output:01conv2d_transpose_1/strided_slice/stack_1:output:01conv2d_transpose_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
conv2d_transpose_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B :\
conv2d_transpose_1/stack/2Const*
_output_shapes
: *
dtype0*
value	B :\
conv2d_transpose_1/stack/3Const*
_output_shapes
: *
dtype0*
value	B :Q?
conv2d_transpose_1/stackPack)conv2d_transpose_1/strided_slice:output:0#conv2d_transpose_1/stack/1:output:0#conv2d_transpose_1/stack/2:output:0#conv2d_transpose_1/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"conv2d_transpose_1/strided_slice_1StridedSlice!conv2d_transpose_1/stack:output:01conv2d_transpose_1/strided_slice_1/stack:output:03conv2d_transpose_1/strided_slice_1/stack_1:output:03conv2d_transpose_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
2conv2d_transpose_1/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_1_conv2d_transpose_readvariableop_resource*'
_output_shapes
:		Q?*
dtype0?
#conv2d_transpose_1/conv2d_transposeConv2DBackpropInput!conv2d_transpose_1/stack:output:0:conv2d_transpose_1/conv2d_transpose/ReadVariableOp:value:0dropout_1/dropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????Q*
paddingSAME*
strides
?
)conv2d_transpose_1/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_1_biasadd_readvariableop_resource*
_output_shapes
:Q*
dtype0?
conv2d_transpose_1/BiasAddBiasAdd,conv2d_transpose_1/conv2d_transpose:output:01conv2d_transpose_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????Q?
8sync_batch_normalization_2/moments/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          ?
&sync_batch_normalization_2/moments/SumSum#conv2d_transpose_1/BiasAdd:output:0Async_batch_normalization_2/moments/Sum/reduction_indices:output:0*
T0*&
_output_shapes
:Q*
	keep_dims(?
)sync_batch_normalization_2/moments/SquareSquare#conv2d_transpose_1/BiasAdd:output:0*
T0*/
_output_shapes
:?????????Q?
:sync_batch_normalization_2/moments/Sum_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          ?
(sync_batch_normalization_2/moments/Sum_1Sum-sync_batch_normalization_2/moments/Square:y:0Csync_batch_normalization_2/moments/Sum_1/reduction_indices:output:0*
T0*&
_output_shapes
:Q*
	keep_dims({
(sync_batch_normalization_2/moments/ShapeShape#conv2d_transpose_1/BiasAdd:output:0*
T0*
_output_shapes
:?
6sync_batch_normalization_2/moments/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8sync_batch_normalization_2/moments/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8sync_batch_normalization_2/moments/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0sync_batch_normalization_2/moments/strided_sliceStridedSlice1sync_batch_normalization_2/moments/Shape:output:0?sync_batch_normalization_2/moments/strided_slice/stack:output:0Async_batch_normalization_2/moments/strided_slice/stack_1:output:0Async_batch_normalization_2/moments/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
'sync_batch_normalization_2/moments/CastCast9sync_batch_normalization_2/moments/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
+sync_batch_normalization_2/moments/IdentityIdentity/sync_batch_normalization_2/moments/Sum:output:0*
T0*&
_output_shapes
:Q?
,sync_batch_normalization_2/moments/IdentityN	IdentityN/sync_batch_normalization_2/moments/Sum:output:0/sync_batch_normalization_2/moments/Sum:output:0*
T
2*+
_gradient_op_typeCustomGradient-44557*8
_output_shapes&
$:Q:Q?
-sync_batch_normalization_2/moments/Identity_1Identity1sync_batch_normalization_2/moments/Sum_1:output:0*
T0*&
_output_shapes
:Q?
.sync_batch_normalization_2/moments/IdentityN_1	IdentityN1sync_batch_normalization_2/moments/Sum_1:output:01sync_batch_normalization_2/moments/Sum_1:output:0*
T
2*+
_gradient_op_typeCustomGradient-44561*8
_output_shapes&
$:Q:Q?
-sync_batch_normalization_2/moments/Identity_2Identity+sync_batch_normalization_2/moments/Cast:y:0*
T0*
_output_shapes
: ?
.sync_batch_normalization_2/moments/IdentityN_2	IdentityN+sync_batch_normalization_2/moments/Cast:y:0+sync_batch_normalization_2/moments/Cast:y:0*
T
2*+
_gradient_op_typeCustomGradient-44565*
_output_shapes
: : }
*sync_batch_normalization_2/moments/Shape_1Shape#conv2d_transpose_1/BiasAdd:output:0*
T0*
_output_shapes
:?
8sync_batch_normalization_2/moments/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
:sync_batch_normalization_2/moments/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
:sync_batch_normalization_2/moments/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
2sync_batch_normalization_2/moments/strided_slice_1StridedSlice3sync_batch_normalization_2/moments/Shape_1:output:0Async_batch_normalization_2/moments/strided_slice_1/stack:output:0Csync_batch_normalization_2/moments/strided_slice_1/stack_1:output:0Csync_batch_normalization_2/moments/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
*sync_batch_normalization_2/moments/Shape_2Shape#conv2d_transpose_1/BiasAdd:output:0*
T0*
_output_shapes
:?
8sync_batch_normalization_2/moments/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:?
:sync_batch_normalization_2/moments/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
:sync_batch_normalization_2/moments/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
2sync_batch_normalization_2/moments/strided_slice_2StridedSlice3sync_batch_normalization_2/moments/Shape_2:output:0Async_batch_normalization_2/moments/strided_slice_2/stack:output:0Csync_batch_normalization_2/moments/strided_slice_2/stack_1:output:0Csync_batch_normalization_2/moments/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
.sync_batch_normalization_2/moments/Rank/packedPack;sync_batch_normalization_2/moments/strided_slice_1:output:0;sync_batch_normalization_2/moments/strided_slice_2:output:0*
N*
T0*
_output_shapes
:i
'sync_batch_normalization_2/moments/RankConst*
_output_shapes
: *
dtype0*
value	B :p
.sync_batch_normalization_2/moments/range/startConst*
_output_shapes
: *
dtype0*
value	B : p
.sync_batch_normalization_2/moments/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :?
(sync_batch_normalization_2/moments/rangeRange7sync_batch_normalization_2/moments/range/start:output:00sync_batch_normalization_2/moments/Rank:output:07sync_batch_normalization_2/moments/range/delta:output:0*
_output_shapes
:?
-sync_batch_normalization_2/moments/Prod/inputPack;sync_batch_normalization_2/moments/strided_slice_1:output:0;sync_batch_normalization_2/moments/strided_slice_2:output:0*
N*
T0*
_output_shapes
:?
'sync_batch_normalization_2/moments/ProdProd6sync_batch_normalization_2/moments/Prod/input:output:01sync_batch_normalization_2/moments/range:output:0*
T0*
_output_shapes
: ?
)sync_batch_normalization_2/moments/Cast_1Cast0sync_batch_normalization_2/moments/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
&sync_batch_normalization_2/moments/mulMul-sync_batch_normalization_2/moments/Cast_1:y:07sync_batch_normalization_2/moments/IdentityN_2:output:0*
T0*
_output_shapes
: ?
*sync_batch_normalization_2/moments/truedivRealDiv5sync_batch_normalization_2/moments/IdentityN:output:0*sync_batch_normalization_2/moments/mul:z:0*
T0*&
_output_shapes
:Q?
,sync_batch_normalization_2/moments/truediv_1RealDiv7sync_batch_normalization_2/moments/IdentityN_1:output:0*sync_batch_normalization_2/moments/mul:z:0*
T0*&
_output_shapes
:Q?
+sync_batch_normalization_2/moments/Square_1Square.sync_batch_normalization_2/moments/truediv:z:0*
T0*&
_output_shapes
:Q?
&sync_batch_normalization_2/moments/subSub0sync_batch_normalization_2/moments/truediv_1:z:0/sync_batch_normalization_2/moments/Square_1:y:0*
T0*&
_output_shapes
:Q?
*sync_batch_normalization_2/moments/SqueezeSqueeze.sync_batch_normalization_2/moments/truediv:z:0*
T0*
_output_shapes
:Q*
squeeze_dims
 ?
,sync_batch_normalization_2/moments/Squeeze_1Squeeze*sync_batch_normalization_2/moments/sub:z:0*
T0*
_output_shapes
:Q*
squeeze_dims
 u
0sync_batch_normalization_2/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
9sync_batch_normalization_2/AssignMovingAvg/ReadVariableOpReadVariableOpBsync_batch_normalization_2_assignmovingavg_readvariableop_resource*
_output_shapes
:Q*
dtype0?
.sync_batch_normalization_2/AssignMovingAvg/subSubAsync_batch_normalization_2/AssignMovingAvg/ReadVariableOp:value:03sync_batch_normalization_2/moments/Squeeze:output:0*
T0*
_output_shapes
:Q?
.sync_batch_normalization_2/AssignMovingAvg/mulMul2sync_batch_normalization_2/AssignMovingAvg/sub:z:09sync_batch_normalization_2/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:Q?
*sync_batch_normalization_2/AssignMovingAvgAssignSubVariableOpBsync_batch_normalization_2_assignmovingavg_readvariableop_resource2sync_batch_normalization_2/AssignMovingAvg/mul:z:0:^sync_batch_normalization_2/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0w
2sync_batch_normalization_2/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
;sync_batch_normalization_2/AssignMovingAvg_1/ReadVariableOpReadVariableOpDsync_batch_normalization_2_assignmovingavg_1_readvariableop_resource*
_output_shapes
:Q*
dtype0?
0sync_batch_normalization_2/AssignMovingAvg_1/subSubCsync_batch_normalization_2/AssignMovingAvg_1/ReadVariableOp:value:05sync_batch_normalization_2/moments/Squeeze_1:output:0*
T0*
_output_shapes
:Q?
0sync_batch_normalization_2/AssignMovingAvg_1/mulMul4sync_batch_normalization_2/AssignMovingAvg_1/sub:z:0;sync_batch_normalization_2/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:Q?
,sync_batch_normalization_2/AssignMovingAvg_1AssignSubVariableOpDsync_batch_normalization_2_assignmovingavg_1_readvariableop_resource4sync_batch_normalization_2/AssignMovingAvg_1/mul:z:0<^sync_batch_normalization_2/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0o
*sync_batch_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
(sync_batch_normalization_2/batchnorm/addAddV25sync_batch_normalization_2/moments/Squeeze_1:output:03sync_batch_normalization_2/batchnorm/add/y:output:0*
T0*
_output_shapes
:Q?
*sync_batch_normalization_2/batchnorm/RsqrtRsqrt,sync_batch_normalization_2/batchnorm/add:z:0*
T0*
_output_shapes
:Q?
7sync_batch_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOp@sync_batch_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes
:Q*
dtype0?
(sync_batch_normalization_2/batchnorm/mulMul.sync_batch_normalization_2/batchnorm/Rsqrt:y:0?sync_batch_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:Q?
*sync_batch_normalization_2/batchnorm/mul_1Mul#conv2d_transpose_1/BiasAdd:output:0,sync_batch_normalization_2/batchnorm/mul:z:0*
T0*/
_output_shapes
:?????????Q?
*sync_batch_normalization_2/batchnorm/mul_2Mul3sync_batch_normalization_2/moments/Squeeze:output:0,sync_batch_normalization_2/batchnorm/mul:z:0*
T0*
_output_shapes
:Q?
3sync_batch_normalization_2/batchnorm/ReadVariableOpReadVariableOp<sync_batch_normalization_2_batchnorm_readvariableop_resource*
_output_shapes
:Q*
dtype0?
(sync_batch_normalization_2/batchnorm/subSub;sync_batch_normalization_2/batchnorm/ReadVariableOp:value:0.sync_batch_normalization_2/batchnorm/mul_2:z:0*
T0*
_output_shapes
:Q?
*sync_batch_normalization_2/batchnorm/add_1AddV2.sync_batch_normalization_2/batchnorm/mul_1:z:0,sync_batch_normalization_2/batchnorm/sub:z:0*
T0*/
_output_shapes
:?????????Q?
leaky_re_lu_2/LeakyRelu	LeakyRelu.sync_batch_normalization_2/batchnorm/add_1:z:0*/
_output_shapes
:?????????Q*
alpha%???>\
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????
dropout_2/dropout/MulMul%leaky_re_lu_2/LeakyRelu:activations:0 dropout_2/dropout/Const:output:0*
T0*/
_output_shapes
:?????????Ql
dropout_2/dropout/ShapeShape%leaky_re_lu_2/LeakyRelu:activations:0*
T0*
_output_shapes
:?
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????Q*
dtype0e
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??u<?
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????Q?
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????Q?
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????Qc
conv2d_transpose_2/ShapeShapedropout_2/dropout/Mul_1:z:0*
T0*
_output_shapes
:p
&conv2d_transpose_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv2d_transpose_2/strided_sliceStridedSlice!conv2d_transpose_2/Shape:output:0/conv2d_transpose_2/strided_slice/stack:output:01conv2d_transpose_2/strided_slice/stack_1:output:01conv2d_transpose_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
conv2d_transpose_2/stack/1Const*
_output_shapes
: *
dtype0*
value	B : \
conv2d_transpose_2/stack/2Const*
_output_shapes
: *
dtype0*
value	B : \
conv2d_transpose_2/stack/3Const*
_output_shapes
: *
dtype0*
value	B :?
conv2d_transpose_2/stackPack)conv2d_transpose_2/strided_slice:output:0#conv2d_transpose_2/stack/1:output:0#conv2d_transpose_2/stack/2:output:0#conv2d_transpose_2/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"conv2d_transpose_2/strided_slice_1StridedSlice!conv2d_transpose_2/stack:output:01conv2d_transpose_2/strided_slice_1/stack:output:03conv2d_transpose_2/strided_slice_1/stack_1:output:03conv2d_transpose_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
2conv2d_transpose_2/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_2_conv2d_transpose_readvariableop_resource*&
_output_shapes
:Q*
dtype0?
#conv2d_transpose_2/conv2d_transposeConv2DBackpropInput!conv2d_transpose_2/stack:output:0:conv2d_transpose_2/conv2d_transpose/ReadVariableOp:value:0dropout_2/dropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????  *
paddingSAME*
strides
?
)conv2d_transpose_2/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_transpose_2/BiasAddBiasAdd,conv2d_transpose_2/conv2d_transpose:output:01conv2d_transpose_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????  ?
8sync_batch_normalization_3/moments/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          ?
&sync_batch_normalization_3/moments/SumSum#conv2d_transpose_2/BiasAdd:output:0Async_batch_normalization_3/moments/Sum/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims(?
)sync_batch_normalization_3/moments/SquareSquare#conv2d_transpose_2/BiasAdd:output:0*
T0*/
_output_shapes
:?????????  ?
:sync_batch_normalization_3/moments/Sum_1/reduction_indicesConst*
_output_shapes
:*
dtype0*!
valueB"          ?
(sync_batch_normalization_3/moments/Sum_1Sum-sync_batch_normalization_3/moments/Square:y:0Csync_batch_normalization_3/moments/Sum_1/reduction_indices:output:0*
T0*&
_output_shapes
:*
	keep_dims({
(sync_batch_normalization_3/moments/ShapeShape#conv2d_transpose_2/BiasAdd:output:0*
T0*
_output_shapes
:?
6sync_batch_normalization_3/moments/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8sync_batch_normalization_3/moments/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8sync_batch_normalization_3/moments/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0sync_batch_normalization_3/moments/strided_sliceStridedSlice1sync_batch_normalization_3/moments/Shape:output:0?sync_batch_normalization_3/moments/strided_slice/stack:output:0Async_batch_normalization_3/moments/strided_slice/stack_1:output:0Async_batch_normalization_3/moments/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
'sync_batch_normalization_3/moments/CastCast9sync_batch_normalization_3/moments/strided_slice:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
+sync_batch_normalization_3/moments/IdentityIdentity/sync_batch_normalization_3/moments/Sum:output:0*
T0*&
_output_shapes
:?
,sync_batch_normalization_3/moments/IdentityN	IdentityN/sync_batch_normalization_3/moments/Sum:output:0/sync_batch_normalization_3/moments/Sum:output:0*
T
2*+
_gradient_op_typeCustomGradient-44655*8
_output_shapes&
$::?
-sync_batch_normalization_3/moments/Identity_1Identity1sync_batch_normalization_3/moments/Sum_1:output:0*
T0*&
_output_shapes
:?
.sync_batch_normalization_3/moments/IdentityN_1	IdentityN1sync_batch_normalization_3/moments/Sum_1:output:01sync_batch_normalization_3/moments/Sum_1:output:0*
T
2*+
_gradient_op_typeCustomGradient-44659*8
_output_shapes&
$::?
-sync_batch_normalization_3/moments/Identity_2Identity+sync_batch_normalization_3/moments/Cast:y:0*
T0*
_output_shapes
: ?
.sync_batch_normalization_3/moments/IdentityN_2	IdentityN+sync_batch_normalization_3/moments/Cast:y:0+sync_batch_normalization_3/moments/Cast:y:0*
T
2*+
_gradient_op_typeCustomGradient-44663*
_output_shapes
: : }
*sync_batch_normalization_3/moments/Shape_1Shape#conv2d_transpose_2/BiasAdd:output:0*
T0*
_output_shapes
:?
8sync_batch_normalization_3/moments/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
:sync_batch_normalization_3/moments/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
:sync_batch_normalization_3/moments/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
2sync_batch_normalization_3/moments/strided_slice_1StridedSlice3sync_batch_normalization_3/moments/Shape_1:output:0Async_batch_normalization_3/moments/strided_slice_1/stack:output:0Csync_batch_normalization_3/moments/strided_slice_1/stack_1:output:0Csync_batch_normalization_3/moments/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
*sync_batch_normalization_3/moments/Shape_2Shape#conv2d_transpose_2/BiasAdd:output:0*
T0*
_output_shapes
:?
8sync_batch_normalization_3/moments/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:?
:sync_batch_normalization_3/moments/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
:sync_batch_normalization_3/moments/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
2sync_batch_normalization_3/moments/strided_slice_2StridedSlice3sync_batch_normalization_3/moments/Shape_2:output:0Async_batch_normalization_3/moments/strided_slice_2/stack:output:0Csync_batch_normalization_3/moments/strided_slice_2/stack_1:output:0Csync_batch_normalization_3/moments/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
.sync_batch_normalization_3/moments/Rank/packedPack;sync_batch_normalization_3/moments/strided_slice_1:output:0;sync_batch_normalization_3/moments/strided_slice_2:output:0*
N*
T0*
_output_shapes
:i
'sync_batch_normalization_3/moments/RankConst*
_output_shapes
: *
dtype0*
value	B :p
.sync_batch_normalization_3/moments/range/startConst*
_output_shapes
: *
dtype0*
value	B : p
.sync_batch_normalization_3/moments/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :?
(sync_batch_normalization_3/moments/rangeRange7sync_batch_normalization_3/moments/range/start:output:00sync_batch_normalization_3/moments/Rank:output:07sync_batch_normalization_3/moments/range/delta:output:0*
_output_shapes
:?
-sync_batch_normalization_3/moments/Prod/inputPack;sync_batch_normalization_3/moments/strided_slice_1:output:0;sync_batch_normalization_3/moments/strided_slice_2:output:0*
N*
T0*
_output_shapes
:?
'sync_batch_normalization_3/moments/ProdProd6sync_batch_normalization_3/moments/Prod/input:output:01sync_batch_normalization_3/moments/range:output:0*
T0*
_output_shapes
: ?
)sync_batch_normalization_3/moments/Cast_1Cast0sync_batch_normalization_3/moments/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: ?
&sync_batch_normalization_3/moments/mulMul-sync_batch_normalization_3/moments/Cast_1:y:07sync_batch_normalization_3/moments/IdentityN_2:output:0*
T0*
_output_shapes
: ?
*sync_batch_normalization_3/moments/truedivRealDiv5sync_batch_normalization_3/moments/IdentityN:output:0*sync_batch_normalization_3/moments/mul:z:0*
T0*&
_output_shapes
:?
,sync_batch_normalization_3/moments/truediv_1RealDiv7sync_batch_normalization_3/moments/IdentityN_1:output:0*sync_batch_normalization_3/moments/mul:z:0*
T0*&
_output_shapes
:?
+sync_batch_normalization_3/moments/Square_1Square.sync_batch_normalization_3/moments/truediv:z:0*
T0*&
_output_shapes
:?
&sync_batch_normalization_3/moments/subSub0sync_batch_normalization_3/moments/truediv_1:z:0/sync_batch_normalization_3/moments/Square_1:y:0*
T0*&
_output_shapes
:?
*sync_batch_normalization_3/moments/SqueezeSqueeze.sync_batch_normalization_3/moments/truediv:z:0*
T0*
_output_shapes
:*
squeeze_dims
 ?
,sync_batch_normalization_3/moments/Squeeze_1Squeeze*sync_batch_normalization_3/moments/sub:z:0*
T0*
_output_shapes
:*
squeeze_dims
 u
0sync_batch_normalization_3/AssignMovingAvg/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
9sync_batch_normalization_3/AssignMovingAvg/ReadVariableOpReadVariableOpBsync_batch_normalization_3_assignmovingavg_readvariableop_resource*
_output_shapes
:*
dtype0?
.sync_batch_normalization_3/AssignMovingAvg/subSubAsync_batch_normalization_3/AssignMovingAvg/ReadVariableOp:value:03sync_batch_normalization_3/moments/Squeeze:output:0*
T0*
_output_shapes
:?
.sync_batch_normalization_3/AssignMovingAvg/mulMul2sync_batch_normalization_3/AssignMovingAvg/sub:z:09sync_batch_normalization_3/AssignMovingAvg/decay:output:0*
T0*
_output_shapes
:?
*sync_batch_normalization_3/AssignMovingAvgAssignSubVariableOpBsync_batch_normalization_3_assignmovingavg_readvariableop_resource2sync_batch_normalization_3/AssignMovingAvg/mul:z:0:^sync_batch_normalization_3/AssignMovingAvg/ReadVariableOp*
_output_shapes
 *
dtype0w
2sync_batch_normalization_3/AssignMovingAvg_1/decayConst*
_output_shapes
: *
dtype0*
valueB
 *
?#<?
;sync_batch_normalization_3/AssignMovingAvg_1/ReadVariableOpReadVariableOpDsync_batch_normalization_3_assignmovingavg_1_readvariableop_resource*
_output_shapes
:*
dtype0?
0sync_batch_normalization_3/AssignMovingAvg_1/subSubCsync_batch_normalization_3/AssignMovingAvg_1/ReadVariableOp:value:05sync_batch_normalization_3/moments/Squeeze_1:output:0*
T0*
_output_shapes
:?
0sync_batch_normalization_3/AssignMovingAvg_1/mulMul4sync_batch_normalization_3/AssignMovingAvg_1/sub:z:0;sync_batch_normalization_3/AssignMovingAvg_1/decay:output:0*
T0*
_output_shapes
:?
,sync_batch_normalization_3/AssignMovingAvg_1AssignSubVariableOpDsync_batch_normalization_3_assignmovingavg_1_readvariableop_resource4sync_batch_normalization_3/AssignMovingAvg_1/mul:z:0<^sync_batch_normalization_3/AssignMovingAvg_1/ReadVariableOp*
_output_shapes
 *
dtype0o
*sync_batch_normalization_3/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:?
(sync_batch_normalization_3/batchnorm/addAddV25sync_batch_normalization_3/moments/Squeeze_1:output:03sync_batch_normalization_3/batchnorm/add/y:output:0*
T0*
_output_shapes
:?
*sync_batch_normalization_3/batchnorm/RsqrtRsqrt,sync_batch_normalization_3/batchnorm/add:z:0*
T0*
_output_shapes
:?
7sync_batch_normalization_3/batchnorm/mul/ReadVariableOpReadVariableOp@sync_batch_normalization_3_batchnorm_mul_readvariableop_resource*
_output_shapes
:*
dtype0?
(sync_batch_normalization_3/batchnorm/mulMul.sync_batch_normalization_3/batchnorm/Rsqrt:y:0?sync_batch_normalization_3/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:?
*sync_batch_normalization_3/batchnorm/mul_1Mul#conv2d_transpose_2/BiasAdd:output:0,sync_batch_normalization_3/batchnorm/mul:z:0*
T0*/
_output_shapes
:?????????  ?
*sync_batch_normalization_3/batchnorm/mul_2Mul3sync_batch_normalization_3/moments/Squeeze:output:0,sync_batch_normalization_3/batchnorm/mul:z:0*
T0*
_output_shapes
:?
3sync_batch_normalization_3/batchnorm/ReadVariableOpReadVariableOp<sync_batch_normalization_3_batchnorm_readvariableop_resource*
_output_shapes
:*
dtype0?
(sync_batch_normalization_3/batchnorm/subSub;sync_batch_normalization_3/batchnorm/ReadVariableOp:value:0.sync_batch_normalization_3/batchnorm/mul_2:z:0*
T0*
_output_shapes
:?
*sync_batch_normalization_3/batchnorm/add_1AddV2.sync_batch_normalization_3/batchnorm/mul_1:z:0,sync_batch_normalization_3/batchnorm/sub:z:0*
T0*/
_output_shapes
:?????????  ?
leaky_re_lu_3/LeakyRelu	LeakyRelu.sync_batch_normalization_3/batchnorm/add_1:z:0*/
_output_shapes
:?????????  *
alpha%???>\
dropout_3/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *????
dropout_3/dropout/MulMul%leaky_re_lu_3/LeakyRelu:activations:0 dropout_3/dropout/Const:output:0*
T0*/
_output_shapes
:?????????  l
dropout_3/dropout/ShapeShape%leaky_re_lu_3/LeakyRelu:activations:0*
T0*
_output_shapes
:?
.dropout_3/dropout/random_uniform/RandomUniformRandomUniform dropout_3/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????  *
dtype0e
 dropout_3/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??u<?
dropout_3/dropout/GreaterEqualGreaterEqual7dropout_3/dropout/random_uniform/RandomUniform:output:0)dropout_3/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:?????????  ?
dropout_3/dropout/CastCast"dropout_3/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????  ?
dropout_3/dropout/Mul_1Muldropout_3/dropout/Mul:z:0dropout_3/dropout/Cast:y:0*
T0*/
_output_shapes
:?????????  c
conv2d_transpose_3/ShapeShapedropout_3/dropout/Mul_1:z:0*
T0*
_output_shapes
:p
&conv2d_transpose_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(conv2d_transpose_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(conv2d_transpose_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 conv2d_transpose_3/strided_sliceStridedSlice!conv2d_transpose_3/Shape:output:0/conv2d_transpose_3/strided_slice/stack:output:01conv2d_transpose_3/strided_slice/stack_1:output:01conv2d_transpose_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
conv2d_transpose_3/stack/1Const*
_output_shapes
: *
dtype0*
value	B :@\
conv2d_transpose_3/stack/2Const*
_output_shapes
: *
dtype0*
value	B :@\
conv2d_transpose_3/stack/3Const*
_output_shapes
: *
dtype0*
value	B :?
conv2d_transpose_3/stackPack)conv2d_transpose_3/strided_slice:output:0#conv2d_transpose_3/stack/1:output:0#conv2d_transpose_3/stack/2:output:0#conv2d_transpose_3/stack/3:output:0*
N*
T0*
_output_shapes
:r
(conv2d_transpose_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*conv2d_transpose_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*conv2d_transpose_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"conv2d_transpose_3/strided_slice_1StridedSlice!conv2d_transpose_3/stack:output:01conv2d_transpose_3/strided_slice_1/stack:output:03conv2d_transpose_3/strided_slice_1/stack_1:output:03conv2d_transpose_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
2conv2d_transpose_3/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_3_conv2d_transpose_readvariableop_resource*&
_output_shapes
:*
dtype0?
#conv2d_transpose_3/conv2d_transposeConv2DBackpropInput!conv2d_transpose_3/stack:output:0:conv2d_transpose_3/conv2d_transpose/ReadVariableOp:value:0dropout_3/dropout/Mul_1:z:0*
T0*/
_output_shapes
:?????????@@*
paddingSAME*
strides
?
)conv2d_transpose_3/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
conv2d_transpose_3/BiasAddBiasAdd,conv2d_transpose_3/conv2d_transpose:output:01conv2d_transpose_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????@@?
conv2d_transpose_3/SigmoidSigmoid#conv2d_transpose_3/BiasAdd:output:0*
T0*/
_output_shapes
:?????????@@u
IdentityIdentityconv2d_transpose_3/Sigmoid:y:0^NoOp*
T0*/
_output_shapes
:?????????@@?
NoOpNoOp(^conv2d_transpose/BiasAdd/ReadVariableOp1^conv2d_transpose/conv2d_transpose/ReadVariableOp*^conv2d_transpose_1/BiasAdd/ReadVariableOp3^conv2d_transpose_1/conv2d_transpose/ReadVariableOp*^conv2d_transpose_2/BiasAdd/ReadVariableOp3^conv2d_transpose_2/conv2d_transpose/ReadVariableOp*^conv2d_transpose_3/BiasAdd/ReadVariableOp3^conv2d_transpose_3/conv2d_transpose/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp)^sync_batch_normalization/AssignMovingAvg8^sync_batch_normalization/AssignMovingAvg/ReadVariableOp+^sync_batch_normalization/AssignMovingAvg_1:^sync_batch_normalization/AssignMovingAvg_1/ReadVariableOp2^sync_batch_normalization/batchnorm/ReadVariableOp6^sync_batch_normalization/batchnorm/mul/ReadVariableOp+^sync_batch_normalization_1/AssignMovingAvg:^sync_batch_normalization_1/AssignMovingAvg/ReadVariableOp-^sync_batch_normalization_1/AssignMovingAvg_1<^sync_batch_normalization_1/AssignMovingAvg_1/ReadVariableOp4^sync_batch_normalization_1/batchnorm/ReadVariableOp8^sync_batch_normalization_1/batchnorm/mul/ReadVariableOp+^sync_batch_normalization_2/AssignMovingAvg:^sync_batch_normalization_2/AssignMovingAvg/ReadVariableOp-^sync_batch_normalization_2/AssignMovingAvg_1<^sync_batch_normalization_2/AssignMovingAvg_1/ReadVariableOp4^sync_batch_normalization_2/batchnorm/ReadVariableOp8^sync_batch_normalization_2/batchnorm/mul/ReadVariableOp+^sync_batch_normalization_3/AssignMovingAvg:^sync_batch_normalization_3/AssignMovingAvg/ReadVariableOp-^sync_batch_normalization_3/AssignMovingAvg_1<^sync_batch_normalization_3/AssignMovingAvg_1/ReadVariableOp4^sync_batch_normalization_3/batchnorm/ReadVariableOp8^sync_batch_normalization_3/batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*[
_input_shapesJ
H:??????????: : : : : : : : : : : : : : : : : : : : : : : : : : 2R
'conv2d_transpose/BiasAdd/ReadVariableOp'conv2d_transpose/BiasAdd/ReadVariableOp2d
0conv2d_transpose/conv2d_transpose/ReadVariableOp0conv2d_transpose/conv2d_transpose/ReadVariableOp2V
)conv2d_transpose_1/BiasAdd/ReadVariableOp)conv2d_transpose_1/BiasAdd/ReadVariableOp2h
2conv2d_transpose_1/conv2d_transpose/ReadVariableOp2conv2d_transpose_1/conv2d_transpose/ReadVariableOp2V
)conv2d_transpose_2/BiasAdd/ReadVariableOp)conv2d_transpose_2/BiasAdd/ReadVariableOp2h
2conv2d_transpose_2/conv2d_transpose/ReadVariableOp2conv2d_transpose_2/conv2d_transpose/ReadVariableOp2V
)conv2d_transpose_3/BiasAdd/ReadVariableOp)conv2d_transpose_3/BiasAdd/ReadVariableOp2h
2conv2d_transpose_3/conv2d_transpose/ReadVariableOp2conv2d_transpose_3/conv2d_transpose/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2T
(sync_batch_normalization/AssignMovingAvg(sync_batch_normalization/AssignMovingAvg2r
7sync_batch_normalization/AssignMovingAvg/ReadVariableOp7sync_batch_normalization/AssignMovingAvg/ReadVariableOp2X
*sync_batch_normalization/AssignMovingAvg_1*sync_batch_normalization/AssignMovingAvg_12v
9sync_batch_normalization/AssignMovingAvg_1/ReadVariableOp9sync_batch_normalization/AssignMovingAvg_1/ReadVariableOp2f
1sync_batch_normalization/batchnorm/ReadVariableOp1sync_batch_normalization/batchnorm/ReadVariableOp2n
5sync_batch_normalization/batchnorm/mul/ReadVariableOp5sync_batch_normalization/batchnorm/mul/ReadVariableOp2X
*sync_batch_normalization_1/AssignMovingAvg*sync_batch_normalization_1/AssignMovingAvg2v
9sync_batch_normalization_1/AssignMovingAvg/ReadVariableOp9sync_batch_normalization_1/AssignMovingAvg/ReadVariableOp2\
,sync_batch_normalization_1/AssignMovingAvg_1,sync_batch_normalization_1/AssignMovingAvg_12z
;sync_batch_normalization_1/AssignMovingAvg_1/ReadVariableOp;sync_batch_normalization_1/AssignMovingAvg_1/ReadVariableOp2j
3sync_batch_normalization_1/batchnorm/ReadVariableOp3sync_batch_normalization_1/batchnorm/ReadVariableOp2r
7sync_batch_normalization_1/batchnorm/mul/ReadVariableOp7sync_batch_normalization_1/batchnorm/mul/ReadVariableOp2X
*sync_batch_normalization_2/AssignMovingAvg*sync_batch_normalization_2/AssignMovingAvg2v
9sync_batch_normalization_2/AssignMovingAvg/ReadVariableOp9sync_batch_normalization_2/AssignMovingAvg/ReadVariableOp2\
,sync_batch_normalization_2/AssignMovingAvg_1,sync_batch_normalization_2/AssignMovingAvg_12z
;sync_batch_normalization_2/AssignMovingAvg_1/ReadVariableOp;sync_batch_normalization_2/AssignMovingAvg_1/ReadVariableOp2j
3sync_batch_normalization_2/batchnorm/ReadVariableOp3sync_batch_normalization_2/batchnorm/ReadVariableOp2r
7sync_batch_normalization_2/batchnorm/mul/ReadVariableOp7sync_batch_normalization_2/batchnorm/mul/ReadVariableOp2X
*sync_batch_normalization_3/AssignMovingAvg*sync_batch_normalization_3/AssignMovingAvg2v
9sync_batch_normalization_3/AssignMovingAvg/ReadVariableOp9sync_batch_normalization_3/AssignMovingAvg/ReadVariableOp2\
,sync_batch_normalization_3/AssignMovingAvg_1,sync_batch_normalization_3/AssignMovingAvg_12z
;sync_batch_normalization_3/AssignMovingAvg_1/ReadVariableOp;sync_batch_normalization_3/AssignMovingAvg_1/ReadVariableOp2j
3sync_batch_normalization_3/batchnorm/ReadVariableOp3sync_batch_normalization_3/batchnorm/ReadVariableOp2r
7sync_batch_normalization_3/batchnorm/mul/ReadVariableOp7sync_batch_normalization_3/batchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
:__inference_sync_batch_normalization_1_layer_call_fn_44996

inputs
unknown:	?
	unknown_0:	?
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,????????????????????????????*$
_read_only_resource_inputs
*2
config_proto" 

CPU

GPU2 *0J 8? *^
fYRW
U__inference_sync_batch_normalization_1_layer_call_and_return_conditional_losses_42880?
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,????????????????????????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,????????????????????????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:j f
B
_output_shapes0
.:,????????????????????????????
 
_user_specified_nameinputs
?	
?
@__inference_dense_layer_call_and_return_conditional_losses_43285

inputs2
matmul_readvariableop_resource:
??[.
biasadd_readvariableop_resource:	?[
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
??[*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????[s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?[*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????[`
IdentityIdentityBiasAdd:output:0^NoOp*
T0*(
_output_shapes
:??????????[w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
\
"__inference_internal_grad_fn_45734
result_grads_0
result_grads_1

identity_1U
IdentityIdentityresult_grads_0*
T0*&
_output_shapes
:?
	IdentityN	IdentityNresult_grads_0result_grads_0*
T
2*+
_gradient_op_typeCustomGradient-45729*8
_output_shapes&
$::[

Identity_1IdentityIdentityN:output:0*
T0*&
_output_shapes
:"!

identity_1Identity_1:output:0*7
_input_shapes&
$:::V R
&
_output_shapes
:
(
_user_specified_nameresult_grads_0:VR
&
_output_shapes
:
(
_user_specified_nameresult_grads_1
?
\
"__inference_internal_grad_fn_45894
result_grads_0
result_grads_1

identity_1E
IdentityIdentityresult_grads_0*
T0*
_output_shapes
: ?
	IdentityN	IdentityNresult_grads_0result_grads_0*
T
2*+
_gradient_op_typeCustomGradient-45889*
_output_shapes
: : K

Identity_1IdentityIdentityN:output:0*
T0*
_output_shapes
: "!

identity_1Identity_1:output:0*
_input_shapes
: : :F B

_output_shapes
: 
(
_user_specified_nameresult_grads_0:FB

_output_shapes
: 
(
_user_specified_nameresult_grads_1
?
b
D__inference_dropout_1_layer_call_and_return_conditional_losses_45115

inputs

identity_1W
IdentityIdentityinputs*
T0*0
_output_shapes
:??????????d

Identity_1IdentityIdentity:output:0*
T0*0
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?

c
D__inference_dropout_1_layer_call_and_return_conditional_losses_43553

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *???m
dropout/MulMulinputsdropout/Const:output:0*
T0*0
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*0
_output_shapes
:??????????*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *??u<?
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*0
_output_shapes
:??????????x
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*0
_output_shapes
:??????????r
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*0
_output_shapes
:??????????b
IdentityIdentitydropout/Mul_1:z:0*
T0*0
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????:X T
0
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
U__inference_sync_batch_normalization_2_layer_call_and_return_conditional_losses_42959

inputs/
!batchnorm_readvariableop_resource:Q3
%batchnorm_mul_readvariableop_resource:Q1
#batchnorm_readvariableop_1_resource:Q1
#batchnorm_readvariableop_2_resource:Q
identity??batchnorm/ReadVariableOp?batchnorm/ReadVariableOp_1?batchnorm/ReadVariableOp_2?batchnorm/mul/ReadVariableOpv
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes
:Q*
dtype0T
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o?:w
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes
:QP
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes
:Q~
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes
:Q*
dtype0t
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes
:Q}
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*A
_output_shapes/
-:+???????????????????????????Qz
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes
:Q*
dtype0r
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes
:Qz
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes
:Q*
dtype0r
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes
:Q?
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*A
_output_shapes/
-:+???????????????????????????Q|
IdentityIdentitybatchnorm/add_1:z:0^NoOp*
T0*A
_output_shapes/
-:+???????????????????????????Q?
NoOpNoOp^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+???????????????????????????Q: : : : 24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:i e
A
_output_shapes/
-:+???????????????????????????Q
 
_user_specified_nameinputs:
"__inference_internal_grad_fn_45634CustomGradient-42665:
"__inference_internal_grad_fn_45644CustomGradient-42669:
"__inference_internal_grad_fn_45654CustomGradient-42673:
"__inference_internal_grad_fn_45664CustomGradient-42820:
"__inference_internal_grad_fn_45674CustomGradient-42824:
"__inference_internal_grad_fn_45684CustomGradient-42828:
"__inference_internal_grad_fn_45694CustomGradient-42986:
"__inference_internal_grad_fn_45704CustomGradient-42990:
"__inference_internal_grad_fn_45714CustomGradient-42994:
"__inference_internal_grad_fn_45724CustomGradient-43152:
"__inference_internal_grad_fn_45734CustomGradient-43156:
"__inference_internal_grad_fn_45744CustomGradient-43160:
"__inference_internal_grad_fn_45754CustomGradient-44362:
"__inference_internal_grad_fn_45764CustomGradient-44366:
"__inference_internal_grad_fn_45774CustomGradient-44370:
"__inference_internal_grad_fn_45784CustomGradient-44459:
"__inference_internal_grad_fn_45794CustomGradient-44463:
"__inference_internal_grad_fn_45804CustomGradient-44467:
"__inference_internal_grad_fn_45814CustomGradient-44557:
"__inference_internal_grad_fn_45824CustomGradient-44561:
"__inference_internal_grad_fn_45834CustomGradient-44565:
"__inference_internal_grad_fn_45844CustomGradient-44655:
"__inference_internal_grad_fn_45854CustomGradient-44659:
"__inference_internal_grad_fn_45864CustomGradient-44663:
"__inference_internal_grad_fn_45874CustomGradient-44823:
"__inference_internal_grad_fn_45884CustomGradient-44827:
"__inference_internal_grad_fn_45894CustomGradient-44831:
"__inference_internal_grad_fn_45904CustomGradient-45030:
"__inference_internal_grad_fn_45914CustomGradient-45034:
"__inference_internal_grad_fn_45924CustomGradient-45038:
"__inference_internal_grad_fn_45934CustomGradient-45229:
"__inference_internal_grad_fn_45944CustomGradient-45233:
"__inference_internal_grad_fn_45954CustomGradient-45237:
"__inference_internal_grad_fn_45964CustomGradient-45428:
"__inference_internal_grad_fn_45974CustomGradient-45432:
"__inference_internal_grad_fn_45984CustomGradient-45436"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
D
dense_input5
serving_default_dense_input:0??????????N
conv2d_transpose_38
StatefulPartitionedCall:0?????????@@tensorflow/serving/predict:??
?
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer-7
	layer-8

layer_with_weights-4

layer-9
layer_with_weights-5
layer-10
layer-11
layer-12
layer_with_weights-6
layer-13
layer_with_weights-7
layer-14
layer-15
layer-16
layer_with_weights-8
layer-17
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
?
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses

!kernel
"bias"
_tf_keras_layer
?
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses
)axis
	*gamma
+beta
,moving_mean
-moving_variance"
_tf_keras_layer
?
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses"
_tf_keras_layer
?
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses
:_random_generator"
_tf_keras_layer
?
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses"
_tf_keras_layer
?
A	variables
Btrainable_variables
Cregularization_losses
D	keras_api
E__call__
*F&call_and_return_all_conditional_losses

Gkernel
Hbias
 I_jit_compiled_convolution_op"
_tf_keras_layer
?
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses
Paxis
	Qgamma
Rbeta
Smoving_mean
Tmoving_variance"
_tf_keras_layer
?
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses"
_tf_keras_layer
?
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses
a_random_generator"
_tf_keras_layer
?
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses

hkernel
ibias
 j_jit_compiled_convolution_op"
_tf_keras_layer
?
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses
qaxis
	rgamma
sbeta
tmoving_mean
umoving_variance"
_tf_keras_layer
?
v	variables
wtrainable_variables
xregularization_losses
y	keras_api
z__call__
*{&call_and_return_all_conditional_losses"
_tf_keras_layer
?
|	variables
}trainable_variables
~regularization_losses
	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?_random_generator"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?kernel
	?bias
!?_jit_compiled_convolution_op"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
	?axis

?gamma
	?beta
?moving_mean
?moving_variance"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?_random_generator"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses
?kernel
	?bias
!?_jit_compiled_convolution_op"
_tf_keras_layer
?
!0
"1
*2
+3
,4
-5
G6
H7
Q8
R9
S10
T11
h12
i13
r14
s15
t16
u17
?18
?19
?20
?21
?22
?23
?24
?25"
trackable_list_wrapper
?
!0
"1
*2
+3
G4
H5
Q6
R7
h8
i9
r10
s11
?12
?13
?14
?15
?16
?17"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_1
?trace_2
?trace_32?
*__inference_sequential_layer_call_fn_43475
*__inference_sequential_layer_call_fn_44116
*__inference_sequential_layer_call_fn_44173
*__inference_sequential_layer_call_fn_43852?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1z?trace_2z?trace_3
?
?trace_0
?trace_1
?trace_2
?trace_32?
E__inference_sequential_layer_call_and_return_conditional_losses_44342
E__inference_sequential_layer_call_and_return_conditional_losses_44744
E__inference_sequential_layer_call_and_return_conditional_losses_43926
E__inference_sequential_layer_call_and_return_conditional_losses_44000?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1z?trace_2z?trace_3
?B?
 __inference__wrapped_model_42614dense_input"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
-
?serving_default"
signature_map
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
%__inference_dense_layer_call_fn_44753?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
@__inference_dense_layer_call_and_return_conditional_losses_44763?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 :
??[2dense/kernel
:?[2
dense/bias
<
*0
+1
,2
-3"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
8__inference_sync_batch_normalization_layer_call_fn_44776
8__inference_sync_batch_normalization_layer_call_fn_44789?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
S__inference_sync_batch_normalization_layer_call_and_return_conditional_losses_44809
S__inference_sync_batch_normalization_layer_call_and_return_conditional_losses_44872?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
 "
trackable_list_wrapper
-:+?[2sync_batch_normalization/gamma
,:*?[2sync_batch_normalization/beta
5:3?[ (2$sync_batch_normalization/moving_mean
9:7?[ (2(sync_batch_normalization/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
+__inference_leaky_re_lu_layer_call_fn_44877?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
F__inference_leaky_re_lu_layer_call_and_return_conditional_losses_44882?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
'__inference_dropout_layer_call_fn_44887
'__inference_dropout_layer_call_fn_44892?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
B__inference_dropout_layer_call_and_return_conditional_losses_44897
B__inference_dropout_layer_call_and_return_conditional_losses_44909?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
'__inference_reshape_layer_call_fn_44914?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
B__inference_reshape_layer_call_and_return_conditional_losses_44928?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
.
G0
H1"
trackable_list_wrapper
.
G0
H1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
A	variables
Btrainable_variables
Cregularization_losses
E__call__
*F&call_and_return_all_conditional_losses
&F"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
0__inference_conv2d_transpose_layer_call_fn_44937?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_44970?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
3:1		??2conv2d_transpose/kernel
$:"?2conv2d_transpose/bias
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
<
Q0
R1
S2
T3"
trackable_list_wrapper
.
Q0
R1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
:__inference_sync_batch_normalization_1_layer_call_fn_44983
:__inference_sync_batch_normalization_1_layer_call_fn_44996?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
U__inference_sync_batch_normalization_1_layer_call_and_return_conditional_losses_45016
U__inference_sync_batch_normalization_1_layer_call_and_return_conditional_losses_45090?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
 "
trackable_list_wrapper
/:-?2 sync_batch_normalization_1/gamma
.:,?2sync_batch_normalization_1/beta
7:5? (2&sync_batch_normalization_1/moving_mean
;:9? (2*sync_batch_normalization_1/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
-__inference_leaky_re_lu_1_layer_call_fn_45095?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
H__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_45100?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
)__inference_dropout_1_layer_call_fn_45105
)__inference_dropout_1_layer_call_fn_45110?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
D__inference_dropout_1_layer_call_and_return_conditional_losses_45115
D__inference_dropout_1_layer_call_and_return_conditional_losses_45127?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
"
_generic_user_object
.
h0
i1"
trackable_list_wrapper
.
h0
i1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
2__inference_conv2d_transpose_1_layer_call_fn_45136?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_45169?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
4:2		Q?2conv2d_transpose_1/kernel
%:#Q2conv2d_transpose_1/bias
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
<
r0
s1
t2
u3"
trackable_list_wrapper
.
r0
s1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
:__inference_sync_batch_normalization_2_layer_call_fn_45182
:__inference_sync_batch_normalization_2_layer_call_fn_45195?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
U__inference_sync_batch_normalization_2_layer_call_and_return_conditional_losses_45215
U__inference_sync_batch_normalization_2_layer_call_and_return_conditional_losses_45289?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
 "
trackable_list_wrapper
.:,Q2 sync_batch_normalization_2/gamma
-:+Q2sync_batch_normalization_2/beta
6:4Q (2&sync_batch_normalization_2/moving_mean
::8Q (2*sync_batch_normalization_2/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
v	variables
wtrainable_variables
xregularization_losses
z__call__
*{&call_and_return_all_conditional_losses
&{"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
-__inference_leaky_re_lu_2_layer_call_fn_45294?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
H__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_45299?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
|	variables
}trainable_variables
~regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
)__inference_dropout_2_layer_call_fn_45304
)__inference_dropout_2_layer_call_fn_45309?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
D__inference_dropout_2_layer_call_and_return_conditional_losses_45314
D__inference_dropout_2_layer_call_and_return_conditional_losses_45326?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
"
_generic_user_object
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
2__inference_conv2d_transpose_2_layer_call_fn_45335?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_45368?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
3:1Q2conv2d_transpose_2/kernel
%:#2conv2d_transpose_2/bias
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
@
?0
?1
?2
?3"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
:__inference_sync_batch_normalization_3_layer_call_fn_45381
:__inference_sync_batch_normalization_3_layer_call_fn_45394?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
U__inference_sync_batch_normalization_3_layer_call_and_return_conditional_losses_45414
U__inference_sync_batch_normalization_3_layer_call_and_return_conditional_losses_45488?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
 "
trackable_list_wrapper
.:,2 sync_batch_normalization_3/gamma
-:+2sync_batch_normalization_3/beta
6:4 (2&sync_batch_normalization_3/moving_mean
::8 (2*sync_batch_normalization_3/moving_variance
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
-__inference_leaky_re_lu_3_layer_call_fn_45493?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
H__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_45498?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_0
?trace_12?
)__inference_dropout_3_layer_call_fn_45503
)__inference_dropout_3_layer_call_fn_45508?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
?
?trace_0
?trace_12?
D__inference_dropout_3_layer_call_and_return_conditional_losses_45513
D__inference_dropout_3_layer_call_and_return_conditional_losses_45525?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 z?trace_0z?trace_1
"
_generic_user_object
0
?0
?1"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?
?trace_02?
2__inference_conv2d_transpose_3_layer_call_fn_45534?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
?
?trace_02?
M__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_45568?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 z?trace_0
3:12conv2d_transpose_3/kernel
%:#2conv2d_transpose_3/bias
?2??
???
FullArgSpec'
args?
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 0
Z
,0
-1
S2
T3
t4
u5
?6
?7"
trackable_list_wrapper
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
*__inference_sequential_layer_call_fn_43475dense_input"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
*__inference_sequential_layer_call_fn_44116inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
*__inference_sequential_layer_call_fn_44173inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
*__inference_sequential_layer_call_fn_43852dense_input"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
E__inference_sequential_layer_call_and_return_conditional_losses_44342inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
E__inference_sequential_layer_call_and_return_conditional_losses_44744inputs"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
E__inference_sequential_layer_call_and_return_conditional_losses_43926dense_input"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
E__inference_sequential_layer_call_and_return_conditional_losses_44000dense_input"?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
#__inference_signature_wrapper_44059dense_input"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
%__inference_dense_layer_call_fn_44753inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
@__inference_dense_layer_call_and_return_conditional_losses_44763inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
.
,0
-1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
8__inference_sync_batch_normalization_layer_call_fn_44776inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
8__inference_sync_batch_normalization_layer_call_fn_44789inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
S__inference_sync_batch_normalization_layer_call_and_return_conditional_losses_44809inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
S__inference_sync_batch_normalization_layer_call_and_return_conditional_losses_44872inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
+__inference_leaky_re_lu_layer_call_fn_44877inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
F__inference_leaky_re_lu_layer_call_and_return_conditional_losses_44882inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
'__inference_dropout_layer_call_fn_44887inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
'__inference_dropout_layer_call_fn_44892inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
B__inference_dropout_layer_call_and_return_conditional_losses_44897inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
B__inference_dropout_layer_call_and_return_conditional_losses_44909inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
'__inference_reshape_layer_call_fn_44914inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
B__inference_reshape_layer_call_and_return_conditional_losses_44928inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
0__inference_conv2d_transpose_layer_call_fn_44937inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_44970inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
.
S0
T1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
:__inference_sync_batch_normalization_1_layer_call_fn_44983inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
:__inference_sync_batch_normalization_1_layer_call_fn_44996inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
U__inference_sync_batch_normalization_1_layer_call_and_return_conditional_losses_45016inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
U__inference_sync_batch_normalization_1_layer_call_and_return_conditional_losses_45090inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
-__inference_leaky_re_lu_1_layer_call_fn_45095inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
H__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_45100inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
)__inference_dropout_1_layer_call_fn_45105inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
)__inference_dropout_1_layer_call_fn_45110inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
D__inference_dropout_1_layer_call_and_return_conditional_losses_45115inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
D__inference_dropout_1_layer_call_and_return_conditional_losses_45127inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
2__inference_conv2d_transpose_1_layer_call_fn_45136inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_45169inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
.
t0
u1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
:__inference_sync_batch_normalization_2_layer_call_fn_45182inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
:__inference_sync_batch_normalization_2_layer_call_fn_45195inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
U__inference_sync_batch_normalization_2_layer_call_and_return_conditional_losses_45215inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
U__inference_sync_batch_normalization_2_layer_call_and_return_conditional_losses_45289inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
-__inference_leaky_re_lu_2_layer_call_fn_45294inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
H__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_45299inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
)__inference_dropout_2_layer_call_fn_45304inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
)__inference_dropout_2_layer_call_fn_45309inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
D__inference_dropout_2_layer_call_and_return_conditional_losses_45314inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
D__inference_dropout_2_layer_call_and_return_conditional_losses_45326inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
2__inference_conv2d_transpose_2_layer_call_fn_45335inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_45368inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
:__inference_sync_batch_normalization_3_layer_call_fn_45381inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
:__inference_sync_batch_normalization_3_layer_call_fn_45394inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
U__inference_sync_batch_normalization_3_layer_call_and_return_conditional_losses_45414inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
U__inference_sync_batch_normalization_3_layer_call_and_return_conditional_losses_45488inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
-__inference_leaky_re_lu_3_layer_call_fn_45493inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
H__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_45498inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
)__inference_dropout_3_layer_call_fn_45503inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
)__inference_dropout_3_layer_call_fn_45508inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
D__inference_dropout_3_layer_call_and_return_conditional_losses_45513inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
D__inference_dropout_3_layer_call_and_return_conditional_losses_45525inputs"?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
2__inference_conv2d_transpose_3_layer_call_fn_45534inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?B?
M__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_45568inputs"?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 ?
 __inference__wrapped_model_42614?"!"-*,+GHTQSRhiurts????????5?2
+?(
&?#
dense_input??????????
? "O?L
J
conv2d_transpose_34?1
conv2d_transpose_3?????????@@?
M__inference_conv2d_transpose_1_layer_call_and_return_conditional_losses_45169?hiJ?G
@?=
;?8
inputs,????????????????????????????
? "??<
5?2
0+???????????????????????????Q
? ?
2__inference_conv2d_transpose_1_layer_call_fn_45136?hiJ?G
@?=
;?8
inputs,????????????????????????????
? "2?/+???????????????????????????Q?
M__inference_conv2d_transpose_2_layer_call_and_return_conditional_losses_45368???I?F
??<
:?7
inputs+???????????????????????????Q
? "??<
5?2
0+???????????????????????????
? ?
2__inference_conv2d_transpose_2_layer_call_fn_45335???I?F
??<
:?7
inputs+???????????????????????????Q
? "2?/+????????????????????????????
M__inference_conv2d_transpose_3_layer_call_and_return_conditional_losses_45568???I?F
??<
:?7
inputs+???????????????????????????
? "??<
5?2
0+???????????????????????????
? ?
2__inference_conv2d_transpose_3_layer_call_fn_45534???I?F
??<
:?7
inputs+???????????????????????????
? "2?/+????????????????????????????
K__inference_conv2d_transpose_layer_call_and_return_conditional_losses_44970?GHJ?G
@?=
;?8
inputs,????????????????????????????
? "@?=
6?3
0,????????????????????????????
? ?
0__inference_conv2d_transpose_layer_call_fn_44937?GHJ?G
@?=
;?8
inputs,????????????????????????????
? "3?0,?????????????????????????????
@__inference_dense_layer_call_and_return_conditional_losses_44763^!"0?-
&?#
!?
inputs??????????
? "&?#
?
0??????????[
? z
%__inference_dense_layer_call_fn_44753Q!"0?-
&?#
!?
inputs??????????
? "???????????[?
D__inference_dropout_1_layer_call_and_return_conditional_losses_45115n<?9
2?/
)?&
inputs??????????
p 
? ".?+
$?!
0??????????
? ?
D__inference_dropout_1_layer_call_and_return_conditional_losses_45127n<?9
2?/
)?&
inputs??????????
p
? ".?+
$?!
0??????????
? ?
)__inference_dropout_1_layer_call_fn_45105a<?9
2?/
)?&
inputs??????????
p 
? "!????????????
)__inference_dropout_1_layer_call_fn_45110a<?9
2?/
)?&
inputs??????????
p
? "!????????????
D__inference_dropout_2_layer_call_and_return_conditional_losses_45314l;?8
1?.
(?%
inputs?????????Q
p 
? "-?*
#? 
0?????????Q
? ?
D__inference_dropout_2_layer_call_and_return_conditional_losses_45326l;?8
1?.
(?%
inputs?????????Q
p
? "-?*
#? 
0?????????Q
? ?
)__inference_dropout_2_layer_call_fn_45304_;?8
1?.
(?%
inputs?????????Q
p 
? " ??????????Q?
)__inference_dropout_2_layer_call_fn_45309_;?8
1?.
(?%
inputs?????????Q
p
? " ??????????Q?
D__inference_dropout_3_layer_call_and_return_conditional_losses_45513l;?8
1?.
(?%
inputs?????????  
p 
? "-?*
#? 
0?????????  
? ?
D__inference_dropout_3_layer_call_and_return_conditional_losses_45525l;?8
1?.
(?%
inputs?????????  
p
? "-?*
#? 
0?????????  
? ?
)__inference_dropout_3_layer_call_fn_45503_;?8
1?.
(?%
inputs?????????  
p 
? " ??????????  ?
)__inference_dropout_3_layer_call_fn_45508_;?8
1?.
(?%
inputs?????????  
p
? " ??????????  ?
B__inference_dropout_layer_call_and_return_conditional_losses_44897^4?1
*?'
!?
inputs??????????[
p 
? "&?#
?
0??????????[
? ?
B__inference_dropout_layer_call_and_return_conditional_losses_44909^4?1
*?'
!?
inputs??????????[
p
? "&?#
?
0??????????[
? |
'__inference_dropout_layer_call_fn_44887Q4?1
*?'
!?
inputs??????????[
p 
? "???????????[|
'__inference_dropout_layer_call_fn_44892Q4?1
*?'
!?
inputs??????????[
p
? "???????????[?
"__inference_internal_grad_fn_45634uU?R
K?H

 
 ?
result_grads_0	?[
 ?
result_grads_1	?[
? "?

 
?
1	?[?
"__inference_internal_grad_fn_45644uU?R
K?H

 
 ?
result_grads_0	?[
 ?
result_grads_1	?[
? "?

 
?
1	?[?
"__inference_internal_grad_fn_45654ZC?@
9?6

 
?
result_grads_0 
?
result_grads_1 
? "?

 

?
1 ?
"__inference_internal_grad_fn_45664?e?b
[?X

 
(?%
result_grads_0?
(?%
result_grads_1?
? "$?!

 
?
1??
"__inference_internal_grad_fn_45674?e?b
[?X

 
(?%
result_grads_0?
(?%
result_grads_1?
? "$?!

 
?
1??
"__inference_internal_grad_fn_45684ZC?@
9?6

 
?
result_grads_0 
?
result_grads_1 
? "?

 

?
1 ?
"__inference_internal_grad_fn_45694?c?`
Y?V

 
'?$
result_grads_0Q
'?$
result_grads_1Q
? "#? 

 
?
1Q?
"__inference_internal_grad_fn_45704?c?`
Y?V

 
'?$
result_grads_0Q
'?$
result_grads_1Q
? "#? 

 
?
1Q?
"__inference_internal_grad_fn_45714ZC?@
9?6

 
?
result_grads_0 
?
result_grads_1 
? "?

 

?
1 ?
"__inference_internal_grad_fn_45724?c?`
Y?V

 
'?$
result_grads_0
'?$
result_grads_1
? "#? 

 
?
1?
"__inference_internal_grad_fn_45734?c?`
Y?V

 
'?$
result_grads_0
'?$
result_grads_1
? "#? 

 
?
1?
"__inference_internal_grad_fn_45744ZC?@
9?6

 
?
result_grads_0 
?
result_grads_1 
? "?

 

?
1 ?
"__inference_internal_grad_fn_45754uU?R
K?H

 
 ?
result_grads_0	?[
 ?
result_grads_1	?[
? "?

 
?
1	?[?
"__inference_internal_grad_fn_45764uU?R
K?H

 
 ?
result_grads_0	?[
 ?
result_grads_1	?[
? "?

 
?
1	?[?
"__inference_internal_grad_fn_45774ZC?@
9?6

 
?
result_grads_0 
?
result_grads_1 
? "?

 

?
1 ?
"__inference_internal_grad_fn_45784?e?b
[?X

 
(?%
result_grads_0?
(?%
result_grads_1?
? "$?!

 
?
1??
"__inference_internal_grad_fn_45794?e?b
[?X

 
(?%
result_grads_0?
(?%
result_grads_1?
? "$?!

 
?
1??
"__inference_internal_grad_fn_45804ZC?@
9?6

 
?
result_grads_0 
?
result_grads_1 
? "?

 

?
1 ?
"__inference_internal_grad_fn_45814?c?`
Y?V

 
'?$
result_grads_0Q
'?$
result_grads_1Q
? "#? 

 
?
1Q?
"__inference_internal_grad_fn_45824?c?`
Y?V

 
'?$
result_grads_0Q
'?$
result_grads_1Q
? "#? 

 
?
1Q?
"__inference_internal_grad_fn_45834ZC?@
9?6

 
?
result_grads_0 
?
result_grads_1 
? "?

 

?
1 ?
"__inference_internal_grad_fn_45844?c?`
Y?V

 
'?$
result_grads_0
'?$
result_grads_1
? "#? 

 
?
1?
"__inference_internal_grad_fn_45854?c?`
Y?V

 
'?$
result_grads_0
'?$
result_grads_1
? "#? 

 
?
1?
"__inference_internal_grad_fn_45864ZC?@
9?6

 
?
result_grads_0 
?
result_grads_1 
? "?

 

?
1 ?
"__inference_internal_grad_fn_45874uU?R
K?H

 
 ?
result_grads_0	?[
 ?
result_grads_1	?[
? "?

 
?
1	?[?
"__inference_internal_grad_fn_45884uU?R
K?H

 
 ?
result_grads_0	?[
 ?
result_grads_1	?[
? "?

 
?
1	?[?
"__inference_internal_grad_fn_45894ZC?@
9?6

 
?
result_grads_0 
?
result_grads_1 
? "?

 

?
1 ?
"__inference_internal_grad_fn_45904?e?b
[?X

 
(?%
result_grads_0?
(?%
result_grads_1?
? "$?!

 
?
1??
"__inference_internal_grad_fn_45914?e?b
[?X

 
(?%
result_grads_0?
(?%
result_grads_1?
? "$?!

 
?
1??
"__inference_internal_grad_fn_45924ZC?@
9?6

 
?
result_grads_0 
?
result_grads_1 
? "?

 

?
1 ?
"__inference_internal_grad_fn_45934?c?`
Y?V

 
'?$
result_grads_0Q
'?$
result_grads_1Q
? "#? 

 
?
1Q?
"__inference_internal_grad_fn_45944?c?`
Y?V

 
'?$
result_grads_0Q
'?$
result_grads_1Q
? "#? 

 
?
1Q?
"__inference_internal_grad_fn_45954ZC?@
9?6

 
?
result_grads_0 
?
result_grads_1 
? "?

 

?
1 ?
"__inference_internal_grad_fn_45964?c?`
Y?V

 
'?$
result_grads_0
'?$
result_grads_1
? "#? 

 
?
1?
"__inference_internal_grad_fn_45974?c?`
Y?V

 
'?$
result_grads_0
'?$
result_grads_1
? "#? 

 
?
1?
"__inference_internal_grad_fn_45984ZC?@
9?6

 
?
result_grads_0 
?
result_grads_1 
? "?

 

?
1 ?
H__inference_leaky_re_lu_1_layer_call_and_return_conditional_losses_45100j8?5
.?+
)?&
inputs??????????
? ".?+
$?!
0??????????
? ?
-__inference_leaky_re_lu_1_layer_call_fn_45095]8?5
.?+
)?&
inputs??????????
? "!????????????
H__inference_leaky_re_lu_2_layer_call_and_return_conditional_losses_45299h7?4
-?*
(?%
inputs?????????Q
? "-?*
#? 
0?????????Q
? ?
-__inference_leaky_re_lu_2_layer_call_fn_45294[7?4
-?*
(?%
inputs?????????Q
? " ??????????Q?
H__inference_leaky_re_lu_3_layer_call_and_return_conditional_losses_45498h7?4
-?*
(?%
inputs?????????  
? "-?*
#? 
0?????????  
? ?
-__inference_leaky_re_lu_3_layer_call_fn_45493[7?4
-?*
(?%
inputs?????????  
? " ??????????  ?
F__inference_leaky_re_lu_layer_call_and_return_conditional_losses_44882Z0?-
&?#
!?
inputs??????????[
? "&?#
?
0??????????[
? |
+__inference_leaky_re_lu_layer_call_fn_44877M0?-
&?#
!?
inputs??????????[
? "???????????[?
B__inference_reshape_layer_call_and_return_conditional_losses_44928b0?-
&?#
!?
inputs??????????[
? ".?+
$?!
0??????????
? ?
'__inference_reshape_layer_call_fn_44914U0?-
&?#
!?
inputs??????????[
? "!????????????
E__inference_sequential_layer_call_and_return_conditional_losses_43926?"!"-*,+GHTQSRhiurts????????=?:
3?0
&?#
dense_input??????????
p 

 
? "-?*
#? 
0?????????@@
? ?
E__inference_sequential_layer_call_and_return_conditional_losses_44000?"!",-*+GHSTQRhiturs????????=?:
3?0
&?#
dense_input??????????
p

 
? "-?*
#? 
0?????????@@
? ?
E__inference_sequential_layer_call_and_return_conditional_losses_44342?"!"-*,+GHTQSRhiurts????????8?5
.?+
!?
inputs??????????
p 

 
? "-?*
#? 
0?????????@@
? ?
E__inference_sequential_layer_call_and_return_conditional_losses_44744?"!",-*+GHSTQRhiturs????????8?5
.?+
!?
inputs??????????
p

 
? "-?*
#? 
0?????????@@
? ?
*__inference_sequential_layer_call_fn_43475?"!"-*,+GHTQSRhiurts????????=?:
3?0
&?#
dense_input??????????
p 

 
? " ??????????@@?
*__inference_sequential_layer_call_fn_43852?"!",-*+GHSTQRhiturs????????=?:
3?0
&?#
dense_input??????????
p

 
? " ??????????@@?
*__inference_sequential_layer_call_fn_44116?"!"-*,+GHTQSRhiurts????????8?5
.?+
!?
inputs??????????
p 

 
? " ??????????@@?
*__inference_sequential_layer_call_fn_44173?"!",-*+GHSTQRhiturs????????8?5
.?+
!?
inputs??????????
p

 
? " ??????????@@?
#__inference_signature_wrapper_44059?"!"-*,+GHTQSRhiurts????????D?A
? 
:?7
5
dense_input&?#
dense_input??????????"O?L
J
conv2d_transpose_34?1
conv2d_transpose_3?????????@@?
U__inference_sync_batch_normalization_1_layer_call_and_return_conditional_losses_45016?TQSRN?K
D?A
;?8
inputs,????????????????????????????
p 
? "@?=
6?3
0,????????????????????????????
? ?
U__inference_sync_batch_normalization_1_layer_call_and_return_conditional_losses_45090?STQRN?K
D?A
;?8
inputs,????????????????????????????
p
? "@?=
6?3
0,????????????????????????????
? ?
:__inference_sync_batch_normalization_1_layer_call_fn_44983?TQSRN?K
D?A
;?8
inputs,????????????????????????????
p 
? "3?0,?????????????????????????????
:__inference_sync_batch_normalization_1_layer_call_fn_44996?STQRN?K
D?A
;?8
inputs,????????????????????????????
p
? "3?0,?????????????????????????????
U__inference_sync_batch_normalization_2_layer_call_and_return_conditional_losses_45215?urtsM?J
C?@
:?7
inputs+???????????????????????????Q
p 
? "??<
5?2
0+???????????????????????????Q
? ?
U__inference_sync_batch_normalization_2_layer_call_and_return_conditional_losses_45289?tursM?J
C?@
:?7
inputs+???????????????????????????Q
p
? "??<
5?2
0+???????????????????????????Q
? ?
:__inference_sync_batch_normalization_2_layer_call_fn_45182?urtsM?J
C?@
:?7
inputs+???????????????????????????Q
p 
? "2?/+???????????????????????????Q?
:__inference_sync_batch_normalization_2_layer_call_fn_45195?tursM?J
C?@
:?7
inputs+???????????????????????????Q
p
? "2?/+???????????????????????????Q?
U__inference_sync_batch_normalization_3_layer_call_and_return_conditional_losses_45414?????M?J
C?@
:?7
inputs+???????????????????????????
p 
? "??<
5?2
0+???????????????????????????
? ?
U__inference_sync_batch_normalization_3_layer_call_and_return_conditional_losses_45488?????M?J
C?@
:?7
inputs+???????????????????????????
p
? "??<
5?2
0+???????????????????????????
? ?
:__inference_sync_batch_normalization_3_layer_call_fn_45381?????M?J
C?@
:?7
inputs+???????????????????????????
p 
? "2?/+????????????????????????????
:__inference_sync_batch_normalization_3_layer_call_fn_45394?????M?J
C?@
:?7
inputs+???????????????????????????
p
? "2?/+????????????????????????????
S__inference_sync_batch_normalization_layer_call_and_return_conditional_losses_44809d-*,+4?1
*?'
!?
inputs??????????[
p 
? "&?#
?
0??????????[
? ?
S__inference_sync_batch_normalization_layer_call_and_return_conditional_losses_44872d,-*+4?1
*?'
!?
inputs??????????[
p
? "&?#
?
0??????????[
? ?
8__inference_sync_batch_normalization_layer_call_fn_44776W-*,+4?1
*?'
!?
inputs??????????[
p 
? "???????????[?
8__inference_sync_batch_normalization_layer_call_fn_44789W,-*+4?1
*?'
!?
inputs??????????[
p
? "???????????[