Öû
Û+­+
:
Add
x"T
y"T
z"T"
Ttype:
2	
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
ò
CTCBeamSearchDecoder

inputs
sequence_length
decoded_indices	*	top_paths
decoded_values	*	top_paths
decoded_shape	*	top_paths
log_probability"

beam_widthint(0"
	top_pathsint(0"
merge_repeatedbool(
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype

Conv2D

input"T
filter"T
output"T"
Ttype:
2"
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
y
Enter	
data"T
output"T"	
Ttype"

frame_namestring"
is_constantbool( "
parallel_iterationsint

)
Exit	
data"T
output"T"	
Ttype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	

FusedBatchNorm
x"T

scale"T
offset"T	
mean"T
variance"T
y"T

batch_mean"T
batch_variance"T
reserve_space_1"T
reserve_space_2"T"
Ttype:
2"
epsilonfloat%·Ñ8"-
data_formatstringNHWC:
NHWCNCHW"
is_trainingbool(
V
HistogramSummary
tag
values"T
summary"
Ttype0:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
$

LogicalAnd
x

y

z

!
LoopCond	
input


output

q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
Ô
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
8
Maximum
x"T
y"T
z"T"
Ttype:

2	
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
8
Minimum
x"T
y"T
z"T"
Ttype:

2	
=
Mul
x"T
y"T
z"T"
Ttype:
2	
2
NextIteration	
data"T
output"T"	
Ttype
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
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
list(type)(0
l
	ReverseV2
tensor"T
axis"Tidx
output"T"
Tidxtype0:
2	"
Ttype:
2	

l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
¼
SparseToDense
sparse_indices"Tindices
output_shape"Tindices
sparse_values"T
default_value"T

dense"T"
validate_indicesbool("	
Ttype"
Tindicestype:
2	
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

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
:
Sub
x"T
y"T
z"T"
Ttype:
2	
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
-
Tanh
x"T
y"T"
Ttype:

2
{
TensorArrayGatherV3

handle
indices
flow_in
value"dtype"
dtypetype"
element_shapeshape:
Y
TensorArrayReadV3

handle	
index
flow_in
value"dtype"
dtypetype
d
TensorArrayScatterV3

handle
indices

value"T
flow_in
flow_out"	
Ttype
9
TensorArraySizeV3

handle
flow_in
size
Þ
TensorArrayV3
size

handle
flow"
dtypetype"
element_shapeshape:"
dynamic_sizebool( "
clear_after_readbool("$
identical_element_shapesbool( "
tensor_array_namestring 
`
TensorArrayWriteV3

handle	
index

value"T
flow_in
flow_out"	
Ttype
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*1.14.02v1.14.0-rc1-22-gaf24dc91b5Í
Y
Deep-CNN/PlaceholderPlaceholder*
_output_shapes
:*
shape:*
dtype0
W
Deep-CNN/truediv/yConst*
valueB
 *  C*
dtype0*
_output_shapes
: 
h
Deep-CNN/truedivRealDivDeep-CNN/PlaceholderDeep-CNN/truediv/y*
T0*
_output_shapes
:
o
Deep-CNN/Reshape/shapeConst*%
valueB"   @         *
dtype0*
_output_shapes
:

Deep-CNN/ReshapeReshapeDeep-CNN/truedivDeep-CNN/Reshape/shape*
Tshape0*'
_output_shapes
:@*
T0
¹
6Deep-CNN/conv1/kernel/Initializer/random_uniform/shapeConst*%
valueB"            *(
_class
loc:@Deep-CNN/conv1/kernel*
dtype0*
_output_shapes
:
£
4Deep-CNN/conv1/kernel/Initializer/random_uniform/minConst*
valueB
 *I:½*(
_class
loc:@Deep-CNN/conv1/kernel*
dtype0*
_output_shapes
: 
£
4Deep-CNN/conv1/kernel/Initializer/random_uniform/maxConst*
valueB
 *I:=*(
_class
loc:@Deep-CNN/conv1/kernel*
dtype0*
_output_shapes
: 

>Deep-CNN/conv1/kernel/Initializer/random_uniform/RandomUniformRandomUniform6Deep-CNN/conv1/kernel/Initializer/random_uniform/shape*

seed *
T0*(
_class
loc:@Deep-CNN/conv1/kernel*
seed2 *
dtype0*'
_output_shapes
:
ò
4Deep-CNN/conv1/kernel/Initializer/random_uniform/subSub4Deep-CNN/conv1/kernel/Initializer/random_uniform/max4Deep-CNN/conv1/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*(
_class
loc:@Deep-CNN/conv1/kernel

4Deep-CNN/conv1/kernel/Initializer/random_uniform/mulMul>Deep-CNN/conv1/kernel/Initializer/random_uniform/RandomUniform4Deep-CNN/conv1/kernel/Initializer/random_uniform/sub*
T0*(
_class
loc:@Deep-CNN/conv1/kernel*'
_output_shapes
:
ÿ
0Deep-CNN/conv1/kernel/Initializer/random_uniformAdd4Deep-CNN/conv1/kernel/Initializer/random_uniform/mul4Deep-CNN/conv1/kernel/Initializer/random_uniform/min*
T0*(
_class
loc:@Deep-CNN/conv1/kernel*'
_output_shapes
:
Å
Deep-CNN/conv1/kernel
VariableV2*
dtype0*'
_output_shapes
:*
shared_name *(
_class
loc:@Deep-CNN/conv1/kernel*
	container *
shape:
ô
Deep-CNN/conv1/kernel/AssignAssignDeep-CNN/conv1/kernel0Deep-CNN/conv1/kernel/Initializer/random_uniform*'
_output_shapes
:*
use_locking(*
T0*(
_class
loc:@Deep-CNN/conv1/kernel*
validate_shape(

Deep-CNN/conv1/kernel/readIdentityDeep-CNN/conv1/kernel*
T0*(
_class
loc:@Deep-CNN/conv1/kernel*'
_output_shapes
:

%Deep-CNN/conv1/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:*
valueB*    *&
_class
loc:@Deep-CNN/conv1/bias
©
Deep-CNN/conv1/bias
VariableV2*
_output_shapes	
:*
shared_name *&
_class
loc:@Deep-CNN/conv1/bias*
	container *
shape:*
dtype0
×
Deep-CNN/conv1/bias/AssignAssignDeep-CNN/conv1/bias%Deep-CNN/conv1/bias/Initializer/zeros*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*&
_class
loc:@Deep-CNN/conv1/bias

Deep-CNN/conv1/bias/readIdentityDeep-CNN/conv1/bias*&
_class
loc:@Deep-CNN/conv1/bias*
_output_shapes	
:*
T0
m
Deep-CNN/conv1/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:

Deep-CNN/conv1/Conv2DConv2DDeep-CNN/ReshapeDeep-CNN/conv1/kernel/read*(
_output_shapes
:@*
	dilations
*
T0*
strides
*
data_formatNHWC*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingSAME

Deep-CNN/conv1/BiasAddBiasAddDeep-CNN/conv1/Conv2DDeep-CNN/conv1/bias/read*
data_formatNHWC*(
_output_shapes
:@*
T0
f
Deep-CNN/conv1/ReluReluDeep-CNN/conv1/BiasAdd*
T0*(
_output_shapes
:@
s
Deep-CNN/Conv-1-weights/tagConst*(
valueB BDeep-CNN/Conv-1-weights*
dtype0*
_output_shapes
: 

Deep-CNN/Conv-1-weightsHistogramSummaryDeep-CNN/Conv-1-weights/tagDeep-CNN/conv1/kernel/read*
_output_shapes
: *
T0
q
Deep-CNN/Conv-1-biases/tagConst*'
valueB BDeep-CNN/Conv-1-biases*
dtype0*
_output_shapes
: 

Deep-CNN/Conv-1-biasesHistogramSummaryDeep-CNN/Conv-1-biases/tagDeep-CNN/conv1/bias/read*
_output_shapes
: *
T0
Ä
Deep-CNN/max_pooling2d/MaxPoolMaxPoolDeep-CNN/conv1/Relu*
T0*
data_formatNHWC*
strides
*
ksize
*
paddingVALID*(
_output_shapes
: 
¹
6Deep-CNN/conv2/kernel/Initializer/random_uniform/shapeConst*%
valueB"            *(
_class
loc:@Deep-CNN/conv2/kernel*
dtype0*
_output_shapes
:
£
4Deep-CNN/conv2/kernel/Initializer/random_uniform/minConst*
valueB
 *ìQ½*(
_class
loc:@Deep-CNN/conv2/kernel*
dtype0*
_output_shapes
: 
£
4Deep-CNN/conv2/kernel/Initializer/random_uniform/maxConst*
valueB
 *ìQ=*(
_class
loc:@Deep-CNN/conv2/kernel*
dtype0*
_output_shapes
: 

>Deep-CNN/conv2/kernel/Initializer/random_uniform/RandomUniformRandomUniform6Deep-CNN/conv2/kernel/Initializer/random_uniform/shape*
T0*(
_class
loc:@Deep-CNN/conv2/kernel*
seed2 *
dtype0*(
_output_shapes
:*

seed 
ò
4Deep-CNN/conv2/kernel/Initializer/random_uniform/subSub4Deep-CNN/conv2/kernel/Initializer/random_uniform/max4Deep-CNN/conv2/kernel/Initializer/random_uniform/min*
T0*(
_class
loc:@Deep-CNN/conv2/kernel*
_output_shapes
: 

4Deep-CNN/conv2/kernel/Initializer/random_uniform/mulMul>Deep-CNN/conv2/kernel/Initializer/random_uniform/RandomUniform4Deep-CNN/conv2/kernel/Initializer/random_uniform/sub*(
_output_shapes
:*
T0*(
_class
loc:@Deep-CNN/conv2/kernel

0Deep-CNN/conv2/kernel/Initializer/random_uniformAdd4Deep-CNN/conv2/kernel/Initializer/random_uniform/mul4Deep-CNN/conv2/kernel/Initializer/random_uniform/min*(
_class
loc:@Deep-CNN/conv2/kernel*(
_output_shapes
:*
T0
Ç
Deep-CNN/conv2/kernel
VariableV2*
dtype0*(
_output_shapes
:*
shared_name *(
_class
loc:@Deep-CNN/conv2/kernel*
	container *
shape:
õ
Deep-CNN/conv2/kernel/AssignAssignDeep-CNN/conv2/kernel0Deep-CNN/conv2/kernel/Initializer/random_uniform*
T0*(
_class
loc:@Deep-CNN/conv2/kernel*
validate_shape(*(
_output_shapes
:*
use_locking(

Deep-CNN/conv2/kernel/readIdentityDeep-CNN/conv2/kernel*(
_class
loc:@Deep-CNN/conv2/kernel*(
_output_shapes
:*
T0

%Deep-CNN/conv2/bias/Initializer/zerosConst*
valueB*    *&
_class
loc:@Deep-CNN/conv2/bias*
dtype0*
_output_shapes	
:
©
Deep-CNN/conv2/bias
VariableV2*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name *&
_class
loc:@Deep-CNN/conv2/bias
×
Deep-CNN/conv2/bias/AssignAssignDeep-CNN/conv2/bias%Deep-CNN/conv2/bias/Initializer/zeros*
use_locking(*
T0*&
_class
loc:@Deep-CNN/conv2/bias*
validate_shape(*
_output_shapes	
:

Deep-CNN/conv2/bias/readIdentityDeep-CNN/conv2/bias*
T0*&
_class
loc:@Deep-CNN/conv2/bias*
_output_shapes	
:
m
Deep-CNN/conv2/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      

Deep-CNN/conv2/Conv2DConv2DDeep-CNN/max_pooling2d/MaxPoolDeep-CNN/conv2/kernel/read*
	dilations
*
T0*
strides
*
data_formatNHWC*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingSAME*(
_output_shapes
: 

Deep-CNN/conv2/BiasAddBiasAddDeep-CNN/conv2/Conv2DDeep-CNN/conv2/bias/read*
T0*
data_formatNHWC*(
_output_shapes
: 
f
Deep-CNN/conv2/ReluReluDeep-CNN/conv2/BiasAdd*
T0*(
_output_shapes
: 
Æ
 Deep-CNN/max_pooling2d_1/MaxPoolMaxPoolDeep-CNN/conv2/Relu*(
_output_shapes
:*
T0*
strides
*
data_formatNHWC*
ksize
*
paddingVALID
¹
6Deep-CNN/conv3/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"            *(
_class
loc:@Deep-CNN/conv3/kernel
£
4Deep-CNN/conv3/kernel/Initializer/random_uniform/minConst*
valueB
 *«ª*½*(
_class
loc:@Deep-CNN/conv3/kernel*
dtype0*
_output_shapes
: 
£
4Deep-CNN/conv3/kernel/Initializer/random_uniform/maxConst*
valueB
 *«ª*=*(
_class
loc:@Deep-CNN/conv3/kernel*
dtype0*
_output_shapes
: 

>Deep-CNN/conv3/kernel/Initializer/random_uniform/RandomUniformRandomUniform6Deep-CNN/conv3/kernel/Initializer/random_uniform/shape*
T0*(
_class
loc:@Deep-CNN/conv3/kernel*
seed2 *
dtype0*(
_output_shapes
:*

seed 
ò
4Deep-CNN/conv3/kernel/Initializer/random_uniform/subSub4Deep-CNN/conv3/kernel/Initializer/random_uniform/max4Deep-CNN/conv3/kernel/Initializer/random_uniform/min*
T0*(
_class
loc:@Deep-CNN/conv3/kernel*
_output_shapes
: 

4Deep-CNN/conv3/kernel/Initializer/random_uniform/mulMul>Deep-CNN/conv3/kernel/Initializer/random_uniform/RandomUniform4Deep-CNN/conv3/kernel/Initializer/random_uniform/sub*
T0*(
_class
loc:@Deep-CNN/conv3/kernel*(
_output_shapes
:

0Deep-CNN/conv3/kernel/Initializer/random_uniformAdd4Deep-CNN/conv3/kernel/Initializer/random_uniform/mul4Deep-CNN/conv3/kernel/Initializer/random_uniform/min*
T0*(
_class
loc:@Deep-CNN/conv3/kernel*(
_output_shapes
:
Ç
Deep-CNN/conv3/kernel
VariableV2*
	container *
shape:*
dtype0*(
_output_shapes
:*
shared_name *(
_class
loc:@Deep-CNN/conv3/kernel
õ
Deep-CNN/conv3/kernel/AssignAssignDeep-CNN/conv3/kernel0Deep-CNN/conv3/kernel/Initializer/random_uniform*(
_class
loc:@Deep-CNN/conv3/kernel*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0

Deep-CNN/conv3/kernel/readIdentityDeep-CNN/conv3/kernel*
T0*(
_class
loc:@Deep-CNN/conv3/kernel*(
_output_shapes
:

%Deep-CNN/conv3/bias/Initializer/zerosConst*
valueB*    *&
_class
loc:@Deep-CNN/conv3/bias*
dtype0*
_output_shapes	
:
©
Deep-CNN/conv3/bias
VariableV2*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name *&
_class
loc:@Deep-CNN/conv3/bias
×
Deep-CNN/conv3/bias/AssignAssignDeep-CNN/conv3/bias%Deep-CNN/conv3/bias/Initializer/zeros*
use_locking(*
T0*&
_class
loc:@Deep-CNN/conv3/bias*
validate_shape(*
_output_shapes	
:

Deep-CNN/conv3/bias/readIdentityDeep-CNN/conv3/bias*
_output_shapes	
:*
T0*&
_class
loc:@Deep-CNN/conv3/bias
m
Deep-CNN/conv3/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:

Deep-CNN/conv3/Conv2DConv2D Deep-CNN/max_pooling2d_1/MaxPoolDeep-CNN/conv3/kernel/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingSAME*(
_output_shapes
:

Deep-CNN/conv3/BiasAddBiasAddDeep-CNN/conv3/Conv2DDeep-CNN/conv3/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:
f
Deep-CNN/conv3/ReluReluDeep-CNN/conv3/BiasAdd*(
_output_shapes
:*
T0
¹
6Deep-CNN/conv4/kernel/Initializer/random_uniform/shapeConst*%
valueB"            *(
_class
loc:@Deep-CNN/conv4/kernel*
dtype0*
_output_shapes
:
£
4Deep-CNN/conv4/kernel/Initializer/random_uniform/minConst*
valueB
 *:Í½*(
_class
loc:@Deep-CNN/conv4/kernel*
dtype0*
_output_shapes
: 
£
4Deep-CNN/conv4/kernel/Initializer/random_uniform/maxConst*
valueB
 *:Í=*(
_class
loc:@Deep-CNN/conv4/kernel*
dtype0*
_output_shapes
: 

>Deep-CNN/conv4/kernel/Initializer/random_uniform/RandomUniformRandomUniform6Deep-CNN/conv4/kernel/Initializer/random_uniform/shape*
T0*(
_class
loc:@Deep-CNN/conv4/kernel*
seed2 *
dtype0*(
_output_shapes
:*

seed 
ò
4Deep-CNN/conv4/kernel/Initializer/random_uniform/subSub4Deep-CNN/conv4/kernel/Initializer/random_uniform/max4Deep-CNN/conv4/kernel/Initializer/random_uniform/min*
T0*(
_class
loc:@Deep-CNN/conv4/kernel*
_output_shapes
: 

4Deep-CNN/conv4/kernel/Initializer/random_uniform/mulMul>Deep-CNN/conv4/kernel/Initializer/random_uniform/RandomUniform4Deep-CNN/conv4/kernel/Initializer/random_uniform/sub*(
_class
loc:@Deep-CNN/conv4/kernel*(
_output_shapes
:*
T0

0Deep-CNN/conv4/kernel/Initializer/random_uniformAdd4Deep-CNN/conv4/kernel/Initializer/random_uniform/mul4Deep-CNN/conv4/kernel/Initializer/random_uniform/min*
T0*(
_class
loc:@Deep-CNN/conv4/kernel*(
_output_shapes
:
Ç
Deep-CNN/conv4/kernel
VariableV2*
shape:*
dtype0*(
_output_shapes
:*
shared_name *(
_class
loc:@Deep-CNN/conv4/kernel*
	container 
õ
Deep-CNN/conv4/kernel/AssignAssignDeep-CNN/conv4/kernel0Deep-CNN/conv4/kernel/Initializer/random_uniform*
use_locking(*
T0*(
_class
loc:@Deep-CNN/conv4/kernel*
validate_shape(*(
_output_shapes
:

Deep-CNN/conv4/kernel/readIdentityDeep-CNN/conv4/kernel*
T0*(
_class
loc:@Deep-CNN/conv4/kernel*(
_output_shapes
:

%Deep-CNN/conv4/bias/Initializer/zerosConst*
valueB*    *&
_class
loc:@Deep-CNN/conv4/bias*
dtype0*
_output_shapes	
:
©
Deep-CNN/conv4/bias
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *&
_class
loc:@Deep-CNN/conv4/bias*
	container *
shape:
×
Deep-CNN/conv4/bias/AssignAssignDeep-CNN/conv4/bias%Deep-CNN/conv4/bias/Initializer/zeros*
use_locking(*
T0*&
_class
loc:@Deep-CNN/conv4/bias*
validate_shape(*
_output_shapes	
:

Deep-CNN/conv4/bias/readIdentityDeep-CNN/conv4/bias*
_output_shapes	
:*
T0*&
_class
loc:@Deep-CNN/conv4/bias
m
Deep-CNN/conv4/dilation_rateConst*
_output_shapes
:*
valueB"      *
dtype0

Deep-CNN/conv4/Conv2DConv2DDeep-CNN/conv3/ReluDeep-CNN/conv4/kernel/read*
	dilations
*
T0*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingSAME*(
_output_shapes
:

Deep-CNN/conv4/BiasAddBiasAddDeep-CNN/conv4/Conv2DDeep-CNN/conv4/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:
f
Deep-CNN/conv4/ReluReluDeep-CNN/conv4/BiasAdd*
T0*(
_output_shapes
:
Æ
 Deep-CNN/max_pooling2d_2/MaxPoolMaxPoolDeep-CNN/conv4/Relu*(
_output_shapes
:*
T0*
strides
*
data_formatNHWC*
ksize
*
paddingVALID
¹
6Deep-CNN/conv5/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"            *(
_class
loc:@Deep-CNN/conv5/kernel
£
4Deep-CNN/conv5/kernel/Initializer/random_uniform/minConst*
valueB
 *ï[ñ¼*(
_class
loc:@Deep-CNN/conv5/kernel*
dtype0*
_output_shapes
: 
£
4Deep-CNN/conv5/kernel/Initializer/random_uniform/maxConst*
valueB
 *ï[ñ<*(
_class
loc:@Deep-CNN/conv5/kernel*
dtype0*
_output_shapes
: 

>Deep-CNN/conv5/kernel/Initializer/random_uniform/RandomUniformRandomUniform6Deep-CNN/conv5/kernel/Initializer/random_uniform/shape*
dtype0*(
_output_shapes
:*

seed *
T0*(
_class
loc:@Deep-CNN/conv5/kernel*
seed2 
ò
4Deep-CNN/conv5/kernel/Initializer/random_uniform/subSub4Deep-CNN/conv5/kernel/Initializer/random_uniform/max4Deep-CNN/conv5/kernel/Initializer/random_uniform/min*(
_class
loc:@Deep-CNN/conv5/kernel*
_output_shapes
: *
T0

4Deep-CNN/conv5/kernel/Initializer/random_uniform/mulMul>Deep-CNN/conv5/kernel/Initializer/random_uniform/RandomUniform4Deep-CNN/conv5/kernel/Initializer/random_uniform/sub*
T0*(
_class
loc:@Deep-CNN/conv5/kernel*(
_output_shapes
:

0Deep-CNN/conv5/kernel/Initializer/random_uniformAdd4Deep-CNN/conv5/kernel/Initializer/random_uniform/mul4Deep-CNN/conv5/kernel/Initializer/random_uniform/min*(
_output_shapes
:*
T0*(
_class
loc:@Deep-CNN/conv5/kernel
Ç
Deep-CNN/conv5/kernel
VariableV2*
shape:*
dtype0*(
_output_shapes
:*
shared_name *(
_class
loc:@Deep-CNN/conv5/kernel*
	container 
õ
Deep-CNN/conv5/kernel/AssignAssignDeep-CNN/conv5/kernel0Deep-CNN/conv5/kernel/Initializer/random_uniform*(
_output_shapes
:*
use_locking(*
T0*(
_class
loc:@Deep-CNN/conv5/kernel*
validate_shape(

Deep-CNN/conv5/kernel/readIdentityDeep-CNN/conv5/kernel*
T0*(
_class
loc:@Deep-CNN/conv5/kernel*(
_output_shapes
:

%Deep-CNN/conv5/bias/Initializer/zerosConst*
valueB*    *&
_class
loc:@Deep-CNN/conv5/bias*
dtype0*
_output_shapes	
:
©
Deep-CNN/conv5/bias
VariableV2*
shared_name *&
_class
loc:@Deep-CNN/conv5/bias*
	container *
shape:*
dtype0*
_output_shapes	
:
×
Deep-CNN/conv5/bias/AssignAssignDeep-CNN/conv5/bias%Deep-CNN/conv5/bias/Initializer/zeros*
T0*&
_class
loc:@Deep-CNN/conv5/bias*
validate_shape(*
_output_shapes	
:*
use_locking(

Deep-CNN/conv5/bias/readIdentityDeep-CNN/conv5/bias*
T0*&
_class
loc:@Deep-CNN/conv5/bias*
_output_shapes	
:
m
Deep-CNN/conv5/dilation_rateConst*
valueB"      *
dtype0*
_output_shapes
:

Deep-CNN/conv5/Conv2DConv2D Deep-CNN/max_pooling2d_2/MaxPoolDeep-CNN/conv5/kernel/read*(
_output_shapes
:*
	dilations
*
T0*
strides
*
data_formatNHWC*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingSAME

Deep-CNN/conv5/BiasAddBiasAddDeep-CNN/conv5/Conv2DDeep-CNN/conv5/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:
f
Deep-CNN/conv5/ReluReluDeep-CNN/conv5/BiasAdd*
T0*(
_output_shapes
:
¹
3Deep-CNN/batch_normalization/gamma/Initializer/onesConst*
dtype0*
_output_shapes	
:*
valueB*  ?*5
_class+
)'loc:@Deep-CNN/batch_normalization/gamma
Ç
"Deep-CNN/batch_normalization/gamma
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *5
_class+
)'loc:@Deep-CNN/batch_normalization/gamma*
	container *
shape:

)Deep-CNN/batch_normalization/gamma/AssignAssign"Deep-CNN/batch_normalization/gamma3Deep-CNN/batch_normalization/gamma/Initializer/ones*5
_class+
)'loc:@Deep-CNN/batch_normalization/gamma*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
´
'Deep-CNN/batch_normalization/gamma/readIdentity"Deep-CNN/batch_normalization/gamma*
T0*5
_class+
)'loc:@Deep-CNN/batch_normalization/gamma*
_output_shapes	
:
¸
3Deep-CNN/batch_normalization/beta/Initializer/zerosConst*
_output_shapes	
:*
valueB*    *4
_class*
(&loc:@Deep-CNN/batch_normalization/beta*
dtype0
Å
!Deep-CNN/batch_normalization/beta
VariableV2*
_output_shapes	
:*
shared_name *4
_class*
(&loc:@Deep-CNN/batch_normalization/beta*
	container *
shape:*
dtype0

(Deep-CNN/batch_normalization/beta/AssignAssign!Deep-CNN/batch_normalization/beta3Deep-CNN/batch_normalization/beta/Initializer/zeros*
use_locking(*
T0*4
_class*
(&loc:@Deep-CNN/batch_normalization/beta*
validate_shape(*
_output_shapes	
:
±
&Deep-CNN/batch_normalization/beta/readIdentity!Deep-CNN/batch_normalization/beta*
T0*4
_class*
(&loc:@Deep-CNN/batch_normalization/beta*
_output_shapes	
:
Æ
:Deep-CNN/batch_normalization/moving_mean/Initializer/zerosConst*
valueB*    *;
_class1
/-loc:@Deep-CNN/batch_normalization/moving_mean*
dtype0*
_output_shapes	
:
Ó
(Deep-CNN/batch_normalization/moving_mean
VariableV2*
_output_shapes	
:*
shared_name *;
_class1
/-loc:@Deep-CNN/batch_normalization/moving_mean*
	container *
shape:*
dtype0
«
/Deep-CNN/batch_normalization/moving_mean/AssignAssign(Deep-CNN/batch_normalization/moving_mean:Deep-CNN/batch_normalization/moving_mean/Initializer/zeros*
T0*;
_class1
/-loc:@Deep-CNN/batch_normalization/moving_mean*
validate_shape(*
_output_shapes	
:*
use_locking(
Æ
-Deep-CNN/batch_normalization/moving_mean/readIdentity(Deep-CNN/batch_normalization/moving_mean*;
_class1
/-loc:@Deep-CNN/batch_normalization/moving_mean*
_output_shapes	
:*
T0
Í
=Deep-CNN/batch_normalization/moving_variance/Initializer/onesConst*
valueB*  ?*?
_class5
31loc:@Deep-CNN/batch_normalization/moving_variance*
dtype0*
_output_shapes	
:
Û
,Deep-CNN/batch_normalization/moving_variance
VariableV2*
shape:*
dtype0*
_output_shapes	
:*
shared_name *?
_class5
31loc:@Deep-CNN/batch_normalization/moving_variance*
	container 
º
3Deep-CNN/batch_normalization/moving_variance/AssignAssign,Deep-CNN/batch_normalization/moving_variance=Deep-CNN/batch_normalization/moving_variance/Initializer/ones*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*?
_class5
31loc:@Deep-CNN/batch_normalization/moving_variance
Ò
1Deep-CNN/batch_normalization/moving_variance/readIdentity,Deep-CNN/batch_normalization/moving_variance*
T0*?
_class5
31loc:@Deep-CNN/batch_normalization/moving_variance*
_output_shapes	
:

+Deep-CNN/batch_normalization/FusedBatchNormFusedBatchNormDeep-CNN/conv5/Relu'Deep-CNN/batch_normalization/gamma/read&Deep-CNN/batch_normalization/beta/read-Deep-CNN/batch_normalization/moving_mean/read1Deep-CNN/batch_normalization/moving_variance/read*
epsilon%o:*
T0*
data_formatNHWC*D
_output_shapes2
0:::::*
is_training( 
g
"Deep-CNN/batch_normalization/ConstConst*
valueB
 *¤p}?*
dtype0*
_output_shapes
: 
¹
6Deep-CNN/conv6/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*%
valueB"            *(
_class
loc:@Deep-CNN/conv6/kernel
£
4Deep-CNN/conv6/kernel/Initializer/random_uniform/minConst*
valueB
 *ìÑ¼*(
_class
loc:@Deep-CNN/conv6/kernel*
dtype0*
_output_shapes
: 
£
4Deep-CNN/conv6/kernel/Initializer/random_uniform/maxConst*
valueB
 *ìÑ<*(
_class
loc:@Deep-CNN/conv6/kernel*
dtype0*
_output_shapes
: 

>Deep-CNN/conv6/kernel/Initializer/random_uniform/RandomUniformRandomUniform6Deep-CNN/conv6/kernel/Initializer/random_uniform/shape*

seed *
T0*(
_class
loc:@Deep-CNN/conv6/kernel*
seed2 *
dtype0*(
_output_shapes
:
ò
4Deep-CNN/conv6/kernel/Initializer/random_uniform/subSub4Deep-CNN/conv6/kernel/Initializer/random_uniform/max4Deep-CNN/conv6/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*(
_class
loc:@Deep-CNN/conv6/kernel

4Deep-CNN/conv6/kernel/Initializer/random_uniform/mulMul>Deep-CNN/conv6/kernel/Initializer/random_uniform/RandomUniform4Deep-CNN/conv6/kernel/Initializer/random_uniform/sub*(
_class
loc:@Deep-CNN/conv6/kernel*(
_output_shapes
:*
T0

0Deep-CNN/conv6/kernel/Initializer/random_uniformAdd4Deep-CNN/conv6/kernel/Initializer/random_uniform/mul4Deep-CNN/conv6/kernel/Initializer/random_uniform/min*(
_class
loc:@Deep-CNN/conv6/kernel*(
_output_shapes
:*
T0
Ç
Deep-CNN/conv6/kernel
VariableV2*
shape:*
dtype0*(
_output_shapes
:*
shared_name *(
_class
loc:@Deep-CNN/conv6/kernel*
	container 
õ
Deep-CNN/conv6/kernel/AssignAssignDeep-CNN/conv6/kernel0Deep-CNN/conv6/kernel/Initializer/random_uniform*(
_class
loc:@Deep-CNN/conv6/kernel*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0

Deep-CNN/conv6/kernel/readIdentityDeep-CNN/conv6/kernel*
T0*(
_class
loc:@Deep-CNN/conv6/kernel*(
_output_shapes
:

%Deep-CNN/conv6/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:*
valueB*    *&
_class
loc:@Deep-CNN/conv6/bias
©
Deep-CNN/conv6/bias
VariableV2*
shared_name *&
_class
loc:@Deep-CNN/conv6/bias*
	container *
shape:*
dtype0*
_output_shapes	
:
×
Deep-CNN/conv6/bias/AssignAssignDeep-CNN/conv6/bias%Deep-CNN/conv6/bias/Initializer/zeros*
use_locking(*
T0*&
_class
loc:@Deep-CNN/conv6/bias*
validate_shape(*
_output_shapes	
:

Deep-CNN/conv6/bias/readIdentityDeep-CNN/conv6/bias*
_output_shapes	
:*
T0*&
_class
loc:@Deep-CNN/conv6/bias
m
Deep-CNN/conv6/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      
¢
Deep-CNN/conv6/Conv2DConv2D+Deep-CNN/batch_normalization/FusedBatchNormDeep-CNN/conv6/kernel/read*
paddingSAME*(
_output_shapes
:*
	dilations
*
T0*
data_formatNHWC*
strides
*
use_cudnn_on_gpu(*
explicit_paddings
 

Deep-CNN/conv6/BiasAddBiasAddDeep-CNN/conv6/Conv2DDeep-CNN/conv6/bias/read*
T0*
data_formatNHWC*(
_output_shapes
:
f
Deep-CNN/conv6/ReluReluDeep-CNN/conv6/BiasAdd*
T0*(
_output_shapes
:
½
5Deep-CNN/batch_normalization_1/gamma/Initializer/onesConst*
valueB*  ?*7
_class-
+)loc:@Deep-CNN/batch_normalization_1/gamma*
dtype0*
_output_shapes	
:
Ë
$Deep-CNN/batch_normalization_1/gamma
VariableV2*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name *7
_class-
+)loc:@Deep-CNN/batch_normalization_1/gamma

+Deep-CNN/batch_normalization_1/gamma/AssignAssign$Deep-CNN/batch_normalization_1/gamma5Deep-CNN/batch_normalization_1/gamma/Initializer/ones*
use_locking(*
T0*7
_class-
+)loc:@Deep-CNN/batch_normalization_1/gamma*
validate_shape(*
_output_shapes	
:
º
)Deep-CNN/batch_normalization_1/gamma/readIdentity$Deep-CNN/batch_normalization_1/gamma*
T0*7
_class-
+)loc:@Deep-CNN/batch_normalization_1/gamma*
_output_shapes	
:
¼
5Deep-CNN/batch_normalization_1/beta/Initializer/zerosConst*
_output_shapes	
:*
valueB*    *6
_class,
*(loc:@Deep-CNN/batch_normalization_1/beta*
dtype0
É
#Deep-CNN/batch_normalization_1/beta
VariableV2*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name *6
_class,
*(loc:@Deep-CNN/batch_normalization_1/beta

*Deep-CNN/batch_normalization_1/beta/AssignAssign#Deep-CNN/batch_normalization_1/beta5Deep-CNN/batch_normalization_1/beta/Initializer/zeros*
use_locking(*
T0*6
_class,
*(loc:@Deep-CNN/batch_normalization_1/beta*
validate_shape(*
_output_shapes	
:
·
(Deep-CNN/batch_normalization_1/beta/readIdentity#Deep-CNN/batch_normalization_1/beta*
T0*6
_class,
*(loc:@Deep-CNN/batch_normalization_1/beta*
_output_shapes	
:
Ê
<Deep-CNN/batch_normalization_1/moving_mean/Initializer/zerosConst*
dtype0*
_output_shapes	
:*
valueB*    *=
_class3
1/loc:@Deep-CNN/batch_normalization_1/moving_mean
×
*Deep-CNN/batch_normalization_1/moving_mean
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *=
_class3
1/loc:@Deep-CNN/batch_normalization_1/moving_mean*
	container *
shape:
³
1Deep-CNN/batch_normalization_1/moving_mean/AssignAssign*Deep-CNN/batch_normalization_1/moving_mean<Deep-CNN/batch_normalization_1/moving_mean/Initializer/zeros*
use_locking(*
T0*=
_class3
1/loc:@Deep-CNN/batch_normalization_1/moving_mean*
validate_shape(*
_output_shapes	
:
Ì
/Deep-CNN/batch_normalization_1/moving_mean/readIdentity*Deep-CNN/batch_normalization_1/moving_mean*=
_class3
1/loc:@Deep-CNN/batch_normalization_1/moving_mean*
_output_shapes	
:*
T0
Ñ
?Deep-CNN/batch_normalization_1/moving_variance/Initializer/onesConst*
valueB*  ?*A
_class7
53loc:@Deep-CNN/batch_normalization_1/moving_variance*
dtype0*
_output_shapes	
:
ß
.Deep-CNN/batch_normalization_1/moving_variance
VariableV2*
shared_name *A
_class7
53loc:@Deep-CNN/batch_normalization_1/moving_variance*
	container *
shape:*
dtype0*
_output_shapes	
:
Â
5Deep-CNN/batch_normalization_1/moving_variance/AssignAssign.Deep-CNN/batch_normalization_1/moving_variance?Deep-CNN/batch_normalization_1/moving_variance/Initializer/ones*
T0*A
_class7
53loc:@Deep-CNN/batch_normalization_1/moving_variance*
validate_shape(*
_output_shapes	
:*
use_locking(
Ø
3Deep-CNN/batch_normalization_1/moving_variance/readIdentity.Deep-CNN/batch_normalization_1/moving_variance*
T0*A
_class7
53loc:@Deep-CNN/batch_normalization_1/moving_variance*
_output_shapes	
:

-Deep-CNN/batch_normalization_1/FusedBatchNormFusedBatchNormDeep-CNN/conv6/Relu)Deep-CNN/batch_normalization_1/gamma/read(Deep-CNN/batch_normalization_1/beta/read/Deep-CNN/batch_normalization_1/moving_mean/read3Deep-CNN/batch_normalization_1/moving_variance/read*
data_formatNHWC*D
_output_shapes2
0:::::*
is_training( *
epsilon%o:*
T0
i
$Deep-CNN/batch_normalization_1/ConstConst*
valueB
 *¤p}?*
dtype0*
_output_shapes
: 
ß
 Deep-CNN/max_pooling2d_3/MaxPoolMaxPool-Deep-CNN/batch_normalization_1/FusedBatchNorm*
ksize
*
paddingVALID*'
_output_shapes
:*
T0*
strides
*
data_formatNHWC
¹
6Deep-CNN/conv7/kernel/Initializer/random_uniform/shapeConst*%
valueB"            *(
_class
loc:@Deep-CNN/conv7/kernel*
dtype0*
_output_shapes
:
£
4Deep-CNN/conv7/kernel/Initializer/random_uniform/minConst*
valueB
 *   ½*(
_class
loc:@Deep-CNN/conv7/kernel*
dtype0*
_output_shapes
: 
£
4Deep-CNN/conv7/kernel/Initializer/random_uniform/maxConst*
valueB
 *   =*(
_class
loc:@Deep-CNN/conv7/kernel*
dtype0*
_output_shapes
: 

>Deep-CNN/conv7/kernel/Initializer/random_uniform/RandomUniformRandomUniform6Deep-CNN/conv7/kernel/Initializer/random_uniform/shape*(
_output_shapes
:*

seed *
T0*(
_class
loc:@Deep-CNN/conv7/kernel*
seed2 *
dtype0
ò
4Deep-CNN/conv7/kernel/Initializer/random_uniform/subSub4Deep-CNN/conv7/kernel/Initializer/random_uniform/max4Deep-CNN/conv7/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*(
_class
loc:@Deep-CNN/conv7/kernel

4Deep-CNN/conv7/kernel/Initializer/random_uniform/mulMul>Deep-CNN/conv7/kernel/Initializer/random_uniform/RandomUniform4Deep-CNN/conv7/kernel/Initializer/random_uniform/sub*(
_output_shapes
:*
T0*(
_class
loc:@Deep-CNN/conv7/kernel

0Deep-CNN/conv7/kernel/Initializer/random_uniformAdd4Deep-CNN/conv7/kernel/Initializer/random_uniform/mul4Deep-CNN/conv7/kernel/Initializer/random_uniform/min*
T0*(
_class
loc:@Deep-CNN/conv7/kernel*(
_output_shapes
:
Ç
Deep-CNN/conv7/kernel
VariableV2*(
_class
loc:@Deep-CNN/conv7/kernel*
	container *
shape:*
dtype0*(
_output_shapes
:*
shared_name 
õ
Deep-CNN/conv7/kernel/AssignAssignDeep-CNN/conv7/kernel0Deep-CNN/conv7/kernel/Initializer/random_uniform*
use_locking(*
T0*(
_class
loc:@Deep-CNN/conv7/kernel*
validate_shape(*(
_output_shapes
:

Deep-CNN/conv7/kernel/readIdentityDeep-CNN/conv7/kernel*(
_output_shapes
:*
T0*(
_class
loc:@Deep-CNN/conv7/kernel
¨
5Deep-CNN/conv7/bias/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
valueB:*&
_class
loc:@Deep-CNN/conv7/bias*
dtype0

+Deep-CNN/conv7/bias/Initializer/zeros/ConstConst*
valueB
 *    *&
_class
loc:@Deep-CNN/conv7/bias*
dtype0*
_output_shapes
: 
ñ
%Deep-CNN/conv7/bias/Initializer/zerosFill5Deep-CNN/conv7/bias/Initializer/zeros/shape_as_tensor+Deep-CNN/conv7/bias/Initializer/zeros/Const*
T0*

index_type0*&
_class
loc:@Deep-CNN/conv7/bias*
_output_shapes	
:
©
Deep-CNN/conv7/bias
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *&
_class
loc:@Deep-CNN/conv7/bias*
	container *
shape:
×
Deep-CNN/conv7/bias/AssignAssignDeep-CNN/conv7/bias%Deep-CNN/conv7/bias/Initializer/zeros*
use_locking(*
T0*&
_class
loc:@Deep-CNN/conv7/bias*
validate_shape(*
_output_shapes	
:

Deep-CNN/conv7/bias/readIdentityDeep-CNN/conv7/bias*
_output_shapes	
:*
T0*&
_class
loc:@Deep-CNN/conv7/bias
m
Deep-CNN/conv7/dilation_rateConst*
dtype0*
_output_shapes
:*
valueB"      

Deep-CNN/conv7/Conv2DConv2D Deep-CNN/max_pooling2d_3/MaxPoolDeep-CNN/conv7/kernel/read*
data_formatNHWC*
strides
*
explicit_paddings
 *
use_cudnn_on_gpu(*
paddingSAME*'
_output_shapes
:*
	dilations
*
T0

Deep-CNN/conv7/BiasAddBiasAddDeep-CNN/conv7/Conv2DDeep-CNN/conv7/bias/read*
T0*
data_formatNHWC*'
_output_shapes
:
e
Deep-CNN/conv7/ReluReluDeep-CNN/conv7/BiasAdd*'
_output_shapes
:*
T0
s
Deep-CNN/Conv-7-weights/tagConst*(
valueB BDeep-CNN/Conv-7-weights*
dtype0*
_output_shapes
: 

Deep-CNN/Conv-7-weightsHistogramSummaryDeep-CNN/Conv-7-weights/tagDeep-CNN/conv7/kernel/read*
_output_shapes
: *
T0
q
Deep-CNN/Conv-7-biases/tagConst*'
valueB BDeep-CNN/Conv-7-biases*
dtype0*
_output_shapes
: 

Deep-CNN/Conv-7-biasesHistogramSummaryDeep-CNN/Conv-7-biases/tagDeep-CNN/conv7/bias/read*
T0*
_output_shapes
: 
i
CNN-to-RNN/ShapeConst*
dtype0*
_output_shapes
:*%
valueB"            
h
CNN-to-RNN/strided_slice/stackConst*
_output_shapes
:*
valueB:*
dtype0
j
 CNN-to-RNN/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
j
 CNN-to-RNN/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
°
CNN-to-RNN/strided_sliceStridedSliceCNN-to-RNN/ShapeCNN-to-RNN/strided_slice/stack CNN-to-RNN/strided_slice/stack_1 CNN-to-RNN/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
g
%CNN-to-RNN/Reshaping-for-LSTM/shape/0Const*
value	B :*
dtype0*
_output_shapes
: 
h
%CNN-to-RNN/Reshaping-for-LSTM/shape/2Const*
value
B :8*
dtype0*
_output_shapes
: 
Í
#CNN-to-RNN/Reshaping-for-LSTM/shapePack%CNN-to-RNN/Reshaping-for-LSTM/shape/0CNN-to-RNN/strided_slice%CNN-to-RNN/Reshaping-for-LSTM/shape/2*
T0*

axis *
N*
_output_shapes
:

CNN-to-RNN/Reshaping-for-LSTMReshapeDeep-CNN/conv7/Relu#CNN-to-RNN/Reshaping-for-LSTM/shape*
T0*
Tshape0*#
_output_shapes
:8
k
!CNN-to-RNN/Flipping-Features/axisConst*
valueB:*
dtype0*
_output_shapes
:
¥
CNN-to-RNN/Flipping-Features	ReverseV2CNN-to-RNN/Reshaping-for-LSTM!CNN-to-RNN/Flipping-Features/axis*
T0*#
_output_shapes
:8*

Tidx0
r
Deep-LSTM/dropout/IdentityIdentityCNN-to-RNN/Flipping-Features*#
_output_shapes
:8*
T0
r
0Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/RankConst*
value	B :*
dtype0*
_output_shapes
: 
y
7Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/range/startConst*
value	B :*
dtype0*
_output_shapes
: 
y
7Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 

1Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/rangeRange7Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/range/start0Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/Rank7Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/range/delta*
_output_shapes
:*

Tidx0

;Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/concat/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
y
7Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
¡
2Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/concatConcatV2;Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/concat/values_01Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/range7Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/concat/axis*
_output_shapes
:*

Tidx0*
T0*
N
Í
5Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/transpose	TransposeDeep-LSTM/dropout/Identity2Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/concat*#
_output_shapes
:8*
Tperm0*
T0

CDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/LSTMCellZeroState/ConstConst*
valueB:*
dtype0*
_output_shapes
:

EDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/LSTMCellZeroState/Const_1Const*
valueB:*
dtype0*
_output_shapes
:

IDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/LSTMCellZeroState/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
á
DDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/LSTMCellZeroState/concatConcatV2CDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/LSTMCellZeroState/ConstEDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/LSTMCellZeroState/Const_1IDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/LSTMCellZeroState/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0

IDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/LSTMCellZeroState/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

CDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/LSTMCellZeroState/zerosFillDDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/LSTMCellZeroState/concatIDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/LSTMCellZeroState/zeros/Const*

index_type0*
_output_shapes
:	*
T0

EDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/LSTMCellZeroState/Const_2Const*
dtype0*
_output_shapes
:*
valueB:

EDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/LSTMCellZeroState/Const_3Const*
valueB:*
dtype0*
_output_shapes
:

EDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/LSTMCellZeroState/Const_4Const*
valueB:*
dtype0*
_output_shapes
:

EDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/LSTMCellZeroState/Const_5Const*
valueB:*
dtype0*
_output_shapes
:

KDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/LSTMCellZeroState/concat_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 
ç
FDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/LSTMCellZeroState/concat_1ConcatV2EDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/LSTMCellZeroState/Const_4EDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/LSTMCellZeroState/Const_5KDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/LSTMCellZeroState/concat_1/axis*
N*
_output_shapes
:*

Tidx0*
T0

KDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/LSTMCellZeroState/zeros_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

EDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/LSTMCellZeroState/zeros_1FillFDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/LSTMCellZeroState/concat_1KDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/LSTMCellZeroState/zeros_1/Const*
T0*

index_type0*
_output_shapes
:	

EDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/LSTMCellZeroState/Const_6Const*
valueB:*
dtype0*
_output_shapes
:

EDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/LSTMCellZeroState/Const_7Const*
_output_shapes
:*
valueB:*
dtype0

1Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/ShapeConst*
dtype0*
_output_shapes
:*!
valueB"         

?Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

ADeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

ADeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Õ
9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/strided_sliceStridedSlice1Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/Shape?Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/strided_slice/stackADeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/strided_slice/stack_1ADeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/strided_slice/stack_2*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask
{
1Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/ConstConst*
valueB:*
dtype0*
_output_shapes
:
~
3Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/Const_1Const*
_output_shapes
:*
valueB:*
dtype0
{
9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 

4Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/concat_1ConcatV21Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/Const3Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/Const_19Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/concat_1/axis*

Tidx0*
T0*
N*
_output_shapes
:
|
7Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
ä
1Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/zerosFill4Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/concat_17Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/zeros/Const*
T0*

index_type0*
_output_shapes
:	
r
0Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/timeConst*
value	B : *
dtype0*
_output_shapes
: 
ñ
7Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/TensorArrayTensorArrayV39Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/strided_slice*
dynamic_size( *
clear_after_read(*
identical_element_shapes(*W
tensor_array_nameB@Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/dynamic_rnn/output_0*
dtype0*
_output_shapes

:: *
element_shape:	
ò
9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/TensorArray_1TensorArrayV39Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/strided_slice*
identical_element_shapes(*V
tensor_array_nameA?Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/dynamic_rnn/input_0*
dtype0*
_output_shapes

:: *
element_shape:	8*
clear_after_read(*
dynamic_size( 

DDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/TensorArrayUnstack/ShapeConst*!
valueB"         *
dtype0*
_output_shapes
:

RDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

TDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:

TDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
´
LDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_sliceStridedSliceDDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/TensorArrayUnstack/ShapeRDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice/stackTDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice/stack_1TDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice/stack_2*
T0*
Index0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 

JDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/TensorArrayUnstack/range/startConst*
value	B : *
dtype0*
_output_shapes
: 

JDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/TensorArrayUnstack/range/deltaConst*
_output_shapes
: *
value	B :*
dtype0
Û
DDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/TensorArrayUnstack/rangeRangeJDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/TensorArrayUnstack/range/startLDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_sliceJDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/TensorArrayUnstack/range/delta*
_output_shapes
:*

Tidx0
Þ
fDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV39Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/TensorArray_1DDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/TensorArrayUnstack/range5Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/transpose;Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/TensorArray_1:1*H
_class>
<:loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/transpose*
_output_shapes
: *
T0
w
5Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/Maximum/xConst*
_output_shapes
: *
value	B :*
dtype0
Ñ
3Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/MaximumMaximum5Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/Maximum/x9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/strided_slice*
T0*
_output_shapes
: 
Ï
3Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/MinimumMinimum9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/strided_slice3Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/Maximum*
T0*
_output_shapes
: 

CDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/iteration_counterConst*
value	B : *
dtype0*
_output_shapes
: 
¥
7Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/EnterEnterCDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/iteration_counter*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *O

frame_nameA?Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/while_context

9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Enter_1Enter0Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/time*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *O

frame_nameA?Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/while_context

9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Enter_2Enter9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/TensorArray:1*
parallel_iterations *
_output_shapes
: *O

frame_nameA?Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant( 
°
9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Enter_3EnterCDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/LSTMCellZeroState/zeros*
parallel_iterations *
_output_shapes
:	*O

frame_nameA?Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant( 
²
9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Enter_4EnterEDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/LSTMCellZeroState/zeros_1*
T0*
is_constant( *
parallel_iterations *
_output_shapes
:	*O

frame_nameA?Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/while_context
æ
7Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/MergeMerge7Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Enter?Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/NextIteration*
T0*
N*
_output_shapes
: : 
ì
9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Merge_1Merge9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Enter_1ADeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/NextIteration_1*
T0*
N*
_output_shapes
: : 
ì
9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Merge_2Merge9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Enter_2ADeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/NextIteration_2*
N*
_output_shapes
: : *
T0
õ
9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Merge_3Merge9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Enter_3ADeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/NextIteration_3*!
_output_shapes
:	: *
T0*
N
õ
9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Merge_4Merge9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Enter_4ADeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/NextIteration_4*
T0*
N*!
_output_shapes
:	: 
Ö
6Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/LessLess7Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Merge<Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Less/Enter*
T0*
_output_shapes
: 
 
<Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Less/EnterEnter9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/strided_slice*
_output_shapes
: *O

frame_nameA?Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(*
parallel_iterations 
Ü
8Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Less_1Less9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Merge_1>Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Less_1/Enter*
_output_shapes
: *
T0

>Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Less_1/EnterEnter3Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/Minimum*
parallel_iterations *
_output_shapes
: *O

frame_nameA?Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(
Ô
<Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/LogicalAnd
LogicalAnd6Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Less8Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Less_1*
_output_shapes
: 

:Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/LoopCondLoopCond<Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/LogicalAnd*
_output_shapes
: 
¦
8Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/SwitchSwitch7Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Merge:Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/LoopCond*
_output_shapes
: : *
T0*J
_class@
><loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Merge
¬
:Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Switch_1Switch9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Merge_1:Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/LoopCond*
T0*L
_classB
@>loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Merge_1*
_output_shapes
: : 
¬
:Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Switch_2Switch9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Merge_2:Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/LoopCond*
T0*L
_classB
@>loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Merge_2*
_output_shapes
: : 
¾
:Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Switch_3Switch9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Merge_3:Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/LoopCond**
_output_shapes
:	:	*
T0*L
_classB
@>loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Merge_3
¾
:Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Switch_4Switch9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Merge_4:Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/LoopCond*
T0*L
_classB
@>loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Merge_4**
_output_shapes
:	:	
£
:Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/IdentityIdentity:Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Switch:1*
T0*
_output_shapes
: 
§
<Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Identity_1Identity<Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Switch_1:1*
_output_shapes
: *
T0
§
<Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Identity_2Identity<Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Switch_2:1*
_output_shapes
: *
T0
°
<Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Identity_3Identity<Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Switch_3:1*
T0*
_output_shapes
:	
°
<Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Identity_4Identity<Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Switch_4:1*
T0*
_output_shapes
:	
¶
7Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/add/yConst;^Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Ò
5Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/addAdd:Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Identity7Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/add/y*
_output_shapes
: *
T0
Ü
CDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/TensorArrayReadV3TensorArrayReadV3IDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter<Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Identity_1KDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1*
dtype0*
_output_shapes
:	8
±
IDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/EnterEnter9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/TensorArray_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*O

frame_nameA?Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/while_context
Ü
KDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1EnterfDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
is_constant(*
parallel_iterations *
_output_shapes
: *O

frame_nameA?Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/while_context*
T0
ù
ZDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/shapeConst*
valueB"      *L
_classB
@>loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernel*
dtype0*
_output_shapes
:
ë
XDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/minConst*
valueB
 *JQÚ¼*L
_classB
@>loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernel*
dtype0*
_output_shapes
: 
ë
XDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/maxConst*
valueB
 *JQÚ<*L
_classB
@>loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernel*
dtype0*
_output_shapes
: 
î
bDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/RandomUniformRandomUniformZDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/shape*
dtype0* 
_output_shapes
:
:*

seed *
T0*L
_classB
@>loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernel*
seed2 

XDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/subSubXDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/maxXDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/min*
T0*L
_classB
@>loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernel*
_output_shapes
: 

XDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/mulMulbDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/RandomUniformXDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/sub* 
_output_shapes
:
:*
T0*L
_classB
@>loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernel

TDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniformAddXDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/mulXDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/min*
T0*L
_classB
@>loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernel* 
_output_shapes
:
:
ÿ
9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernel
VariableV2*
	container *
shape:
:*
dtype0* 
_output_shapes
:
:*
shared_name *L
_classB
@>loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernel
ý
@Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernel/AssignAssign9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernelTDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform*
use_locking(*
T0*L
_classB
@>loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
:
°
>Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernel/readIdentity9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernel* 
_output_shapes
:
:*
T0
ð
YDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/bias/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*
valueB:*J
_class@
><loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/bias
à
ODeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/bias/Initializer/zeros/ConstConst*
_output_shapes
: *
valueB
 *    *J
_class@
><loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/bias*
dtype0

IDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/bias/Initializer/zerosFillYDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/bias/Initializer/zeros/shape_as_tensorODeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/bias/Initializer/zeros/Const*

index_type0*J
_class@
><loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/bias*
_output_shapes	
:*
T0
ñ
7Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/bias
VariableV2*
	container *
shape:*
dtype0*
_output_shapes	
:*
shared_name *J
_class@
><loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/bias
ç
>Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/bias/AssignAssign7Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/biasIDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/bias/Initializer/zeros*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*J
_class@
><loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/bias
§
<Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/bias/readIdentity7Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/bias*
_output_shapes	
:*
T0
Æ
GDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/concat/axisConst;^Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Ù
BDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/concatConcatV2CDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/TensorArrayReadV3<Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Identity_4GDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/concat/axis*
T0*
N*
_output_shapes
:	:*

Tidx0
ª
BDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/MatMulMatMulBDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/concatHDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul/Enter*
_output_shapes
:	*
transpose_a( *
transpose_b( *
T0
»
HDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul/EnterEnter>Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernel/read*
T0*
is_constant(*
parallel_iterations * 
_output_shapes
:
:*O

frame_nameA?Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/while_context

CDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/BiasAddBiasAddBDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/MatMulIDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/BiasAdd/Enter*
T0*
data_formatNHWC*
_output_shapes
:	
µ
IDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/BiasAdd/EnterEnter<Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/bias/read*
_output_shapes	
:*O

frame_nameA?Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(*
parallel_iterations 
À
ADeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/ConstConst;^Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Ê
KDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/split/split_dimConst;^Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
¸
ADeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/splitSplitKDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/split/split_dimCDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/BiasAdd*@
_output_shapes.
,:	:	:	:	*
	num_split*
T0
Ã
ADeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/add/yConst;^Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Identity*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ø
?Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/addAddCDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/split:2ADeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/add/y*
T0*
_output_shapes
:	
¹
CDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/SigmoidSigmoid?Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/add*
_output_shapes
:	*
T0
ó
?Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/mulMulCDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/Sigmoid<Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Identity_3*
T0*
_output_shapes
:	
½
EDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/Sigmoid_1SigmoidADeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/split*
_output_shapes
:	*
T0
·
@Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/TanhTanhCDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/split:1*
T0*
_output_shapes
:	
û
ADeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1MulEDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/Sigmoid_1@Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/Tanh*
_output_shapes
:	*
T0
ö
ADeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/add_1Add?Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/mulADeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1*
T0*
_output_shapes
:	
¿
EDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/Sigmoid_2SigmoidCDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/split:3*
_output_shapes
:	*
T0
·
BDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/Tanh_1TanhADeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/add_1*
T0*
_output_shapes
:	
ý
ADeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2MulEDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/Sigmoid_2BDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/Tanh_1*
_output_shapes
:	*
T0
þ
UDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3[Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3/Enter<Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Identity_1ADeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2<Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Identity_2*
T0*T
_classJ
HFloc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2*
_output_shapes
: 

[Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnter7Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/TensorArray*
T0*T
_classJ
HFloc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2*
parallel_iterations *
is_constant(*
_output_shapes
:*O

frame_nameA?Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/while_context
¸
9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/add_1/yConst;^Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Ø
7Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/add_1Add<Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Identity_19Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/add_1/y*
T0*
_output_shapes
: 
¨
?Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/NextIterationNextIteration5Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/add*
_output_shapes
: *
T0
¬
ADeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/NextIteration_1NextIteration7Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/add_1*
_output_shapes
: *
T0
Ê
ADeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/NextIteration_2NextIterationUDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3*
_output_shapes
: *
T0
¿
ADeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/NextIteration_3NextIterationADeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/add_1*
T0*
_output_shapes
:	
¿
ADeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/NextIteration_4NextIterationADeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2*
_output_shapes
:	*
T0

6Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/ExitExit8Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Switch*
T0*
_output_shapes
: 

8Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Exit_1Exit:Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Switch_1*
T0*
_output_shapes
: 

8Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Exit_2Exit:Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Switch_2*
T0*
_output_shapes
: 
¦
8Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Exit_3Exit:Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Switch_3*
T0*
_output_shapes
:	
¦
8Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Exit_4Exit:Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Switch_4*
T0*
_output_shapes
:	
º
NDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/TensorArrayStack/TensorArraySizeV3TensorArraySizeV37Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/TensorArray8Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Exit_2*
_output_shapes
: *J
_class@
><loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/TensorArray
Ö
HDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/TensorArrayStack/range/startConst*
value	B : *J
_class@
><loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/TensorArray*
dtype0*
_output_shapes
: 
Ö
HDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/TensorArrayStack/range/deltaConst*
_output_shapes
: *
value	B :*J
_class@
><loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/TensorArray*
dtype0
¬
BDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/TensorArrayStack/rangeRangeHDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/TensorArrayStack/range/startNDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/TensorArrayStack/TensorArraySizeV3HDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/TensorArrayStack/range/delta*

Tidx0*J
_class@
><loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/TensorArray*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
º
PDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV37Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/TensorArrayBDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/TensorArrayStack/range8Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Exit_2*#
_output_shapes
:*
element_shape:	*J
_class@
><loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/TensorArray*
dtype0

3Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/Const_2Const*
valueB"      *
dtype0*
_output_shapes
:
~
3Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/Const_3Const*
valueB:*
dtype0*
_output_shapes
:
t
2Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
{
9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/range_1/startConst*
dtype0*
_output_shapes
: *
value	B :
{
9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 

3Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/range_1Range9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/range_1/start2Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/Rank_19Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/range_1/delta*

Tidx0*
_output_shapes
:

=Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/concat_2/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
{
9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/concat_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
©
4Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/concat_2ConcatV2=Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/concat_2/values_03Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/range_19Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/concat_2/axis*
T0*
N*
_output_shapes
:*

Tidx0

7Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/transpose_1	TransposePDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/TensorArrayStack/TensorArrayGatherV34Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/concat_2*#
_output_shapes
:*
Tperm0*
T0

7Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/ReverseV2/axisConst*
valueB:*
dtype0*
_output_shapes
:
Î
2Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/ReverseV2	ReverseV2Deep-LSTM/dropout/Identity7Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/ReverseV2/axis*

Tidx0*
T0*#
_output_shapes
:8
r
0Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/RankConst*
dtype0*
_output_shapes
: *
value	B :
y
7Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/range/startConst*
_output_shapes
: *
value	B :*
dtype0
y
7Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 

1Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/rangeRange7Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/range/start0Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/Rank7Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/range/delta*
_output_shapes
:*

Tidx0

;Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/concat/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
y
7Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/concat/axisConst*
dtype0*
_output_shapes
: *
value	B : 
¡
2Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/concatConcatV2;Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/concat/values_01Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/range7Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
å
5Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/transpose	Transpose2Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/ReverseV22Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/concat*#
_output_shapes
:8*
Tperm0*
T0

CDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/LSTMCellZeroState/ConstConst*
dtype0*
_output_shapes
:*
valueB:

EDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/LSTMCellZeroState/Const_1Const*
valueB:*
dtype0*
_output_shapes
:

IDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/LSTMCellZeroState/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
á
DDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/LSTMCellZeroState/concatConcatV2CDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/LSTMCellZeroState/ConstEDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/LSTMCellZeroState/Const_1IDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/LSTMCellZeroState/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0

IDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/LSTMCellZeroState/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

CDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/LSTMCellZeroState/zerosFillDDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/LSTMCellZeroState/concatIDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/LSTMCellZeroState/zeros/Const*
_output_shapes
:	*
T0*

index_type0

EDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/LSTMCellZeroState/Const_2Const*
dtype0*
_output_shapes
:*
valueB:

EDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/LSTMCellZeroState/Const_3Const*
valueB:*
dtype0*
_output_shapes
:

EDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/LSTMCellZeroState/Const_4Const*
valueB:*
dtype0*
_output_shapes
:

EDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/LSTMCellZeroState/Const_5Const*
valueB:*
dtype0*
_output_shapes
:

KDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/LSTMCellZeroState/concat_1/axisConst*
dtype0*
_output_shapes
: *
value	B : 
ç
FDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/LSTMCellZeroState/concat_1ConcatV2EDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/LSTMCellZeroState/Const_4EDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/LSTMCellZeroState/Const_5KDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/LSTMCellZeroState/concat_1/axis*
T0*
N*
_output_shapes
:*

Tidx0

KDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/LSTMCellZeroState/zeros_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

EDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/LSTMCellZeroState/zeros_1FillFDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/LSTMCellZeroState/concat_1KDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/LSTMCellZeroState/zeros_1/Const*
T0*

index_type0*
_output_shapes
:	

EDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/LSTMCellZeroState/Const_6Const*
dtype0*
_output_shapes
:*
valueB:

EDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/LSTMCellZeroState/Const_7Const*
dtype0*
_output_shapes
:*
valueB:

1Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/ShapeConst*!
valueB"         *
dtype0*
_output_shapes
:

?Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

ADeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

ADeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Õ
9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/strided_sliceStridedSlice1Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/Shape?Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/strided_slice/stackADeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/strided_slice/stack_1ADeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/strided_slice/stack_2*
end_mask *
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask 
{
1Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/ConstConst*
valueB:*
dtype0*
_output_shapes
:
~
3Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/Const_1Const*
dtype0*
_output_shapes
:*
valueB:
{
9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/concat_1/axisConst*
_output_shapes
: *
value	B : *
dtype0

4Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/concat_1ConcatV21Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/Const3Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/Const_19Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/concat_1/axis*
N*
_output_shapes
:*

Tidx0*
T0
|
7Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
ä
1Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/zerosFill4Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/concat_17Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/zeros/Const*
_output_shapes
:	*
T0*

index_type0
r
0Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/timeConst*
_output_shapes
: *
value	B : *
dtype0
ñ
7Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/TensorArrayTensorArrayV39Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/strided_slice*
element_shape:	*
clear_after_read(*
dynamic_size( *
identical_element_shapes(*W
tensor_array_nameB@Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/dynamic_rnn/output_0*
dtype0*
_output_shapes

:: 
ò
9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/TensorArray_1TensorArrayV39Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/strided_slice*V
tensor_array_nameA?Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/dynamic_rnn/input_0*
dtype0*
_output_shapes

:: *
element_shape:	8*
clear_after_read(*
dynamic_size( *
identical_element_shapes(

DDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/TensorArrayUnstack/ShapeConst*!
valueB"         *
dtype0*
_output_shapes
:

RDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

TDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0

TDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
´
LDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_sliceStridedSliceDDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/TensorArrayUnstack/ShapeRDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice/stackTDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice/stack_1TDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 

JDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/TensorArrayUnstack/range/startConst*
value	B : *
dtype0*
_output_shapes
: 

JDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Û
DDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/TensorArrayUnstack/rangeRangeJDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/TensorArrayUnstack/range/startLDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_sliceJDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/TensorArrayUnstack/range/delta*
_output_shapes
:*

Tidx0
Þ
fDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV39Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/TensorArray_1DDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/TensorArrayUnstack/range5Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/transpose;Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/TensorArray_1:1*
T0*H
_class>
<:loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/transpose*
_output_shapes
: 
w
5Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/Maximum/xConst*
value	B :*
dtype0*
_output_shapes
: 
Ñ
3Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/MaximumMaximum5Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/Maximum/x9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/strided_slice*
T0*
_output_shapes
: 
Ï
3Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/MinimumMinimum9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/strided_slice3Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/Maximum*
T0*
_output_shapes
: 

CDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/iteration_counterConst*
_output_shapes
: *
value	B : *
dtype0
¥
7Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/EnterEnterCDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/iteration_counter*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *O

frame_nameA?Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/while_context

9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Enter_1Enter0Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/time*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *O

frame_nameA?Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/while_context

9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Enter_2Enter9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/TensorArray:1*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *O

frame_nameA?Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/while_context
°
9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Enter_3EnterCDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/LSTMCellZeroState/zeros*
is_constant( *
parallel_iterations *
_output_shapes
:	*O

frame_nameA?Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/while_context*
T0
²
9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Enter_4EnterEDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/LSTMCellZeroState/zeros_1*
T0*
is_constant( *
parallel_iterations *
_output_shapes
:	*O

frame_nameA?Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/while_context
æ
7Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/MergeMerge7Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Enter?Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/NextIteration*
N*
_output_shapes
: : *
T0
ì
9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Merge_1Merge9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Enter_1ADeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/NextIteration_1*
T0*
N*
_output_shapes
: : 
ì
9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Merge_2Merge9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Enter_2ADeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/NextIteration_2*
T0*
N*
_output_shapes
: : 
õ
9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Merge_3Merge9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Enter_3ADeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/NextIteration_3*!
_output_shapes
:	: *
T0*
N
õ
9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Merge_4Merge9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Enter_4ADeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/NextIteration_4*
T0*
N*!
_output_shapes
:	: 
Ö
6Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/LessLess7Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Merge<Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Less/Enter*
T0*
_output_shapes
: 
 
<Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Less/EnterEnter9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/strided_slice*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *O

frame_nameA?Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/while_context
Ü
8Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Less_1Less9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Merge_1>Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Less_1/Enter*
_output_shapes
: *
T0

>Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Less_1/EnterEnter3Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/Minimum*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *O

frame_nameA?Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/while_context
Ô
<Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/LogicalAnd
LogicalAnd6Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Less8Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Less_1*
_output_shapes
: 

:Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/LoopCondLoopCond<Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/LogicalAnd*
_output_shapes
: 
¦
8Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/SwitchSwitch7Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Merge:Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/LoopCond*
_output_shapes
: : *
T0*J
_class@
><loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Merge
¬
:Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Switch_1Switch9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Merge_1:Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/LoopCond*
T0*L
_classB
@>loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Merge_1*
_output_shapes
: : 
¬
:Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Switch_2Switch9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Merge_2:Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/LoopCond*
T0*L
_classB
@>loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Merge_2*
_output_shapes
: : 
¾
:Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Switch_3Switch9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Merge_3:Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/LoopCond*
T0*L
_classB
@>loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Merge_3**
_output_shapes
:	:	
¾
:Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Switch_4Switch9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Merge_4:Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/LoopCond*
T0*L
_classB
@>loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Merge_4**
_output_shapes
:	:	
£
:Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/IdentityIdentity:Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Switch:1*
T0*
_output_shapes
: 
§
<Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Identity_1Identity<Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Switch_1:1*
_output_shapes
: *
T0
§
<Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Identity_2Identity<Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Switch_2:1*
T0*
_output_shapes
: 
°
<Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Identity_3Identity<Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Switch_3:1*
_output_shapes
:	*
T0
°
<Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Identity_4Identity<Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Switch_4:1*
T0*
_output_shapes
:	
¶
7Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/add/yConst;^Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Ò
5Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/addAdd:Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Identity7Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/add/y*
_output_shapes
: *
T0
Ü
CDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/TensorArrayReadV3TensorArrayReadV3IDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter<Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Identity_1KDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1*
dtype0*
_output_shapes
:	8
±
IDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/EnterEnter9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/TensorArray_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*O

frame_nameA?Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/while_context
Ü
KDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1EnterfDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *O

frame_nameA?Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/while_context
ù
ZDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"      *L
_classB
@>loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernel
ë
XDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/minConst*
valueB
 *JQÚ¼*L
_classB
@>loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernel*
dtype0*
_output_shapes
: 
ë
XDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/maxConst*
valueB
 *JQÚ<*L
_classB
@>loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernel*
dtype0*
_output_shapes
: 
î
bDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/RandomUniformRandomUniformZDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/shape* 
_output_shapes
:
:*

seed *
T0*L
_classB
@>loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernel*
seed2 *
dtype0

XDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/subSubXDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/maxXDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/min*L
_classB
@>loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernel*
_output_shapes
: *
T0

XDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/mulMulbDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/RandomUniformXDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/sub*
T0*L
_classB
@>loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernel* 
_output_shapes
:
:

TDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniformAddXDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/mulXDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/min*
T0*L
_classB
@>loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernel* 
_output_shapes
:
:
ÿ
9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernel
VariableV2*
shape:
:*
dtype0* 
_output_shapes
:
:*
shared_name *L
_classB
@>loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernel*
	container 
ý
@Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernel/AssignAssign9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernelTDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform* 
_output_shapes
:
:*
use_locking(*
T0*L
_classB
@>loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernel*
validate_shape(
°
>Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernel/readIdentity9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernel*
T0* 
_output_shapes
:
:
ð
YDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/bias/Initializer/zeros/shape_as_tensorConst*
valueB:*J
_class@
><loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/bias*
dtype0*
_output_shapes
:
à
ODeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/bias/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *J
_class@
><loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/bias

IDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/bias/Initializer/zerosFillYDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/bias/Initializer/zeros/shape_as_tensorODeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/bias/Initializer/zeros/Const*
T0*

index_type0*J
_class@
><loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/bias*
_output_shapes	
:
ñ
7Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/bias
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *J
_class@
><loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/bias*
	container *
shape:
ç
>Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/bias/AssignAssign7Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/biasIDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/bias/Initializer/zeros*
use_locking(*
T0*J
_class@
><loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/bias*
validate_shape(*
_output_shapes	
:
§
<Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/bias/readIdentity7Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/bias*
T0*
_output_shapes	
:
Æ
GDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/concat/axisConst;^Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Ù
BDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/concatConcatV2CDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/TensorArrayReadV3<Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Identity_4GDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/concat/axis*
_output_shapes
:	:*

Tidx0*
T0*
N
ª
BDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/MatMulMatMulBDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/concatHDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul/Enter*
_output_shapes
:	*
transpose_a( *
transpose_b( *
T0
»
HDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul/EnterEnter>Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernel/read*
T0*
is_constant(*
parallel_iterations * 
_output_shapes
:
:*O

frame_nameA?Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/while_context

CDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/BiasAddBiasAddBDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/MatMulIDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/BiasAdd/Enter*
data_formatNHWC*
_output_shapes
:	*
T0
µ
IDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/BiasAdd/EnterEnter<Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/bias/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes	
:*O

frame_nameA?Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/while_context
À
ADeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/ConstConst;^Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Identity*
_output_shapes
: *
value	B :*
dtype0
Ê
KDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/split/split_dimConst;^Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
¸
ADeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/splitSplitKDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/split/split_dimCDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/BiasAdd*
T0*@
_output_shapes.
,:	:	:	:	*
	num_split
Ã
ADeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/add/yConst;^Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Identity*
_output_shapes
: *
valueB
 *  ?*
dtype0
ø
?Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/addAddCDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/split:2ADeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/add/y*
_output_shapes
:	*
T0
¹
CDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/SigmoidSigmoid?Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/add*
_output_shapes
:	*
T0
ó
?Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/mulMulCDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/Sigmoid<Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Identity_3*
T0*
_output_shapes
:	
½
EDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/Sigmoid_1SigmoidADeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/split*
_output_shapes
:	*
T0
·
@Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/TanhTanhCDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/split:1*
_output_shapes
:	*
T0
û
ADeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1MulEDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/Sigmoid_1@Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/Tanh*
_output_shapes
:	*
T0
ö
ADeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/add_1Add?Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/mulADeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1*
_output_shapes
:	*
T0
¿
EDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/Sigmoid_2SigmoidCDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/split:3*
T0*
_output_shapes
:	
·
BDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/Tanh_1TanhADeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/add_1*
T0*
_output_shapes
:	
ý
ADeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2MulEDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/Sigmoid_2BDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/Tanh_1*
_output_shapes
:	*
T0
þ
UDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3[Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3/Enter<Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Identity_1ADeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2<Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Identity_2*
_output_shapes
: *
T0*T
_classJ
HFloc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2

[Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnter7Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/TensorArray*
T0*T
_classJ
HFloc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2*
parallel_iterations *
is_constant(*
_output_shapes
:*O

frame_nameA?Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/while_context
¸
9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/add_1/yConst;^Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Ø
7Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/add_1Add<Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Identity_19Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/add_1/y*
T0*
_output_shapes
: 
¨
?Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/NextIterationNextIteration5Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/add*
_output_shapes
: *
T0
¬
ADeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/NextIteration_1NextIteration7Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/add_1*
T0*
_output_shapes
: 
Ê
ADeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/NextIteration_2NextIterationUDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3*
_output_shapes
: *
T0
¿
ADeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/NextIteration_3NextIterationADeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/add_1*
T0*
_output_shapes
:	
¿
ADeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/NextIteration_4NextIterationADeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2*
T0*
_output_shapes
:	

6Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/ExitExit8Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Switch*
T0*
_output_shapes
: 

8Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Exit_1Exit:Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Switch_1*
T0*
_output_shapes
: 

8Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Exit_2Exit:Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Switch_2*
T0*
_output_shapes
: 
¦
8Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Exit_3Exit:Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Switch_3*
T0*
_output_shapes
:	
¦
8Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Exit_4Exit:Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Switch_4*
_output_shapes
:	*
T0
º
NDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/TensorArrayStack/TensorArraySizeV3TensorArraySizeV37Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/TensorArray8Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Exit_2*J
_class@
><loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/TensorArray*
_output_shapes
: 
Ö
HDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/TensorArrayStack/range/startConst*
dtype0*
_output_shapes
: *
value	B : *J
_class@
><loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/TensorArray
Ö
HDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/TensorArrayStack/range/deltaConst*
value	B :*J
_class@
><loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/TensorArray*
dtype0*
_output_shapes
: 
¬
BDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/TensorArrayStack/rangeRangeHDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/TensorArrayStack/range/startNDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/TensorArrayStack/TensorArraySizeV3HDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/TensorArrayStack/range/delta*J
_class@
><loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/TensorArray*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

Tidx0
º
PDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV37Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/TensorArrayBDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/TensorArrayStack/range8Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Exit_2*#
_output_shapes
:*
element_shape:	*J
_class@
><loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/TensorArray*
dtype0

3Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/Const_2Const*
dtype0*
_output_shapes
:*
valueB"      
~
3Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/Const_3Const*
valueB:*
dtype0*
_output_shapes
:
t
2Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/Rank_1Const*
_output_shapes
: *
value	B :*
dtype0
{
9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/range_1/startConst*
_output_shapes
: *
value	B :*
dtype0
{
9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/range_1/deltaConst*
value	B :*
dtype0*
_output_shapes
: 

3Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/range_1Range9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/range_1/start2Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/Rank_19Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/range_1/delta*
_output_shapes
:*

Tidx0

=Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/concat_2/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
{
9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/concat_2/axisConst*
value	B : *
dtype0*
_output_shapes
: 
©
4Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/concat_2ConcatV2=Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/concat_2/values_03Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/range_19Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/concat_2/axis*
N*
_output_shapes
:*

Tidx0*
T0

7Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/transpose_1	TransposePDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/TensorArrayStack/TensorArrayGatherV34Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/concat_2*
T0*#
_output_shapes
:*
Tperm0
l
"Deep-LSTM/bd-lstm_1/ReverseV2/axisConst*
_output_shapes
:*
valueB:*
dtype0
Á
Deep-LSTM/bd-lstm_1/ReverseV2	ReverseV27Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/transpose_1"Deep-LSTM/bd-lstm_1/ReverseV2/axis*#
_output_shapes
:*

Tidx0*
T0
a
Deep-LSTM/bd-lstm_1/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
â
Deep-LSTM/bd-lstm_1/concatConcatV27Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/transpose_1Deep-LSTM/bd-lstm_1/ReverseV2Deep-LSTM/bd-lstm_1/concat/axis*
T0*
N*#
_output_shapes
:*

Tidx0
s
Deep-LSTM/LSTM1-weights/tagConst*(
valueB BDeep-LSTM/LSTM1-weights*
dtype0*
_output_shapes
: 
©
Deep-LSTM/LSTM1-weightsHistogramSummaryDeep-LSTM/LSTM1-weights/tag>Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernel/read*
T0*
_output_shapes
: 
q
Deep-LSTM/LSTM1-Biases/tagConst*'
valueB BDeep-LSTM/LSTM1-Biases*
dtype0*
_output_shapes
: 
¥
Deep-LSTM/LSTM1-BiasesHistogramSummaryDeep-LSTM/LSTM1-Biases/tag<Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/bias/read*
T0*
_output_shapes
: 
r
Deep-LSTM/dropout_1/IdentityIdentityDeep-LSTM/bd-lstm_1/concat*
T0*#
_output_shapes
:
r
0Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/RankConst*
value	B :*
dtype0*
_output_shapes
: 
y
7Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/range/startConst*
value	B :*
dtype0*
_output_shapes
: 
y
7Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 

1Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/rangeRange7Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/range/start0Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/Rank7Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/range/delta*
_output_shapes
:*

Tidx0

;Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/concat/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
y
7Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
¡
2Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/concatConcatV2;Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/concat/values_01Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/range7Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0
Ï
5Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/transpose	TransposeDeep-LSTM/dropout_1/Identity2Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/concat*
T0*#
_output_shapes
:*
Tperm0

CDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/LSTMCellZeroState/ConstConst*
valueB:*
dtype0*
_output_shapes
:

EDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/LSTMCellZeroState/Const_1Const*
valueB:*
dtype0*
_output_shapes
:

IDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/LSTMCellZeroState/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
á
DDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/LSTMCellZeroState/concatConcatV2CDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/LSTMCellZeroState/ConstEDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/LSTMCellZeroState/Const_1IDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/LSTMCellZeroState/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0

IDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/LSTMCellZeroState/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

CDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/LSTMCellZeroState/zerosFillDDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/LSTMCellZeroState/concatIDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/LSTMCellZeroState/zeros/Const*
_output_shapes
:	*
T0*

index_type0

EDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/LSTMCellZeroState/Const_2Const*
valueB:*
dtype0*
_output_shapes
:

EDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/LSTMCellZeroState/Const_3Const*
_output_shapes
:*
valueB:*
dtype0

EDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/LSTMCellZeroState/Const_4Const*
valueB:*
dtype0*
_output_shapes
:

EDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/LSTMCellZeroState/Const_5Const*
valueB:*
dtype0*
_output_shapes
:

KDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/LSTMCellZeroState/concat_1/axisConst*
_output_shapes
: *
value	B : *
dtype0
ç
FDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/LSTMCellZeroState/concat_1ConcatV2EDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/LSTMCellZeroState/Const_4EDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/LSTMCellZeroState/Const_5KDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/LSTMCellZeroState/concat_1/axis*
N*
_output_shapes
:*

Tidx0*
T0

KDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/LSTMCellZeroState/zeros_1/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0

EDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/LSTMCellZeroState/zeros_1FillFDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/LSTMCellZeroState/concat_1KDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/LSTMCellZeroState/zeros_1/Const*

index_type0*
_output_shapes
:	*
T0

EDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/LSTMCellZeroState/Const_6Const*
dtype0*
_output_shapes
:*
valueB:

EDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/LSTMCellZeroState/Const_7Const*
valueB:*
dtype0*
_output_shapes
:

1Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/ShapeConst*!
valueB"         *
dtype0*
_output_shapes
:

?Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

ADeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:

ADeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Õ
9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/strided_sliceStridedSlice1Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/Shape?Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/strided_slice/stackADeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/strided_slice/stack_1ADeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
{
1Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/ConstConst*
valueB:*
dtype0*
_output_shapes
:
~
3Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/Const_1Const*
valueB:*
dtype0*
_output_shapes
:
{
9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 

4Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/concat_1ConcatV21Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/Const3Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/Const_19Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/concat_1/axis*

Tidx0*
T0*
N*
_output_shapes
:
|
7Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/zeros/ConstConst*
_output_shapes
: *
valueB
 *    *
dtype0
ä
1Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/zerosFill4Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/concat_17Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/zeros/Const*
T0*

index_type0*
_output_shapes
:	
r
0Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/timeConst*
value	B : *
dtype0*
_output_shapes
: 
ñ
7Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/TensorArrayTensorArrayV39Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/strided_slice*
_output_shapes

:: *
element_shape:	*
dynamic_size( *
clear_after_read(*
identical_element_shapes(*W
tensor_array_nameB@Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/dynamic_rnn/output_0*
dtype0
ò
9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/TensorArray_1TensorArrayV39Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/strided_slice*
identical_element_shapes(*V
tensor_array_nameA?Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/dynamic_rnn/input_0*
dtype0*
_output_shapes

:: *
element_shape:	*
dynamic_size( *
clear_after_read(

DDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/TensorArrayUnstack/ShapeConst*!
valueB"         *
dtype0*
_output_shapes
:

RDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB: 

TDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0

TDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
´
LDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_sliceStridedSliceDDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/TensorArrayUnstack/ShapeRDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice/stackTDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice/stack_1TDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0

JDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/TensorArrayUnstack/range/startConst*
value	B : *
dtype0*
_output_shapes
: 

JDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/TensorArrayUnstack/range/deltaConst*
dtype0*
_output_shapes
: *
value	B :
Û
DDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/TensorArrayUnstack/rangeRangeJDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/TensorArrayUnstack/range/startLDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/TensorArrayUnstack/strided_sliceJDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/TensorArrayUnstack/range/delta*
_output_shapes
:*

Tidx0
Þ
fDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV39Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/TensorArray_1DDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/TensorArrayUnstack/range5Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/transpose;Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/TensorArray_1:1*
T0*H
_class>
<:loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/transpose*
_output_shapes
: 
w
5Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/Maximum/xConst*
value	B :*
dtype0*
_output_shapes
: 
Ñ
3Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/MaximumMaximum5Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/Maximum/x9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/strided_slice*
T0*
_output_shapes
: 
Ï
3Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/MinimumMinimum9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/strided_slice3Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/Maximum*
_output_shapes
: *
T0

CDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/iteration_counterConst*
value	B : *
dtype0*
_output_shapes
: 
¥
7Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/EnterEnterCDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/iteration_counter*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *O

frame_nameA?Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/while_context

9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Enter_1Enter0Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/time*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *O

frame_nameA?Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/while_context

9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Enter_2Enter9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/TensorArray:1*
is_constant( *
parallel_iterations *
_output_shapes
: *O

frame_nameA?Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/while_context*
T0
°
9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Enter_3EnterCDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/LSTMCellZeroState/zeros*
parallel_iterations *
_output_shapes
:	*O

frame_nameA?Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant( 
²
9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Enter_4EnterEDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/LSTMCellZeroState/zeros_1*
T0*
is_constant( *
parallel_iterations *
_output_shapes
:	*O

frame_nameA?Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/while_context
æ
7Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/MergeMerge7Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Enter?Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/NextIteration*
_output_shapes
: : *
T0*
N
ì
9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Merge_1Merge9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Enter_1ADeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/NextIteration_1*
T0*
N*
_output_shapes
: : 
ì
9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Merge_2Merge9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Enter_2ADeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/NextIteration_2*
N*
_output_shapes
: : *
T0
õ
9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Merge_3Merge9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Enter_3ADeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/NextIteration_3*
T0*
N*!
_output_shapes
:	: 
õ
9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Merge_4Merge9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Enter_4ADeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/NextIteration_4*
N*!
_output_shapes
:	: *
T0
Ö
6Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/LessLess7Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Merge<Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Less/Enter*
T0*
_output_shapes
: 
 
<Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Less/EnterEnter9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/strided_slice*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *O

frame_nameA?Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/while_context
Ü
8Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Less_1Less9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Merge_1>Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Less_1/Enter*
T0*
_output_shapes
: 

>Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Less_1/EnterEnter3Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/Minimum*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *O

frame_nameA?Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/while_context
Ô
<Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/LogicalAnd
LogicalAnd6Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Less8Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Less_1*
_output_shapes
: 

:Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/LoopCondLoopCond<Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/LogicalAnd*
_output_shapes
: 
¦
8Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/SwitchSwitch7Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Merge:Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/LoopCond*
_output_shapes
: : *
T0*J
_class@
><loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Merge
¬
:Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Switch_1Switch9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Merge_1:Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/LoopCond*
_output_shapes
: : *
T0*L
_classB
@>loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Merge_1
¬
:Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Switch_2Switch9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Merge_2:Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/LoopCond*
T0*L
_classB
@>loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Merge_2*
_output_shapes
: : 
¾
:Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Switch_3Switch9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Merge_3:Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/LoopCond*
T0*L
_classB
@>loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Merge_3**
_output_shapes
:	:	
¾
:Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Switch_4Switch9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Merge_4:Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/LoopCond**
_output_shapes
:	:	*
T0*L
_classB
@>loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Merge_4
£
:Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/IdentityIdentity:Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Switch:1*
T0*
_output_shapes
: 
§
<Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Identity_1Identity<Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Switch_1:1*
_output_shapes
: *
T0
§
<Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Identity_2Identity<Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Switch_2:1*
T0*
_output_shapes
: 
°
<Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Identity_3Identity<Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Switch_3:1*
T0*
_output_shapes
:	
°
<Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Identity_4Identity<Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Switch_4:1*
T0*
_output_shapes
:	
¶
7Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/add/yConst;^Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Identity*
dtype0*
_output_shapes
: *
value	B :
Ò
5Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/addAdd:Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Identity7Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/add/y*
T0*
_output_shapes
: 
Ü
CDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/TensorArrayReadV3TensorArrayReadV3IDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter<Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Identity_1KDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1*
dtype0*
_output_shapes
:	
±
IDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/EnterEnter9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/TensorArray_1*
T0*
is_constant(*
parallel_iterations *
_output_shapes
:*O

frame_nameA?Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/while_context
Ü
KDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1EnterfDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *O

frame_nameA?Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/while_context
ù
ZDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/shapeConst*
valueB"      *L
_classB
@>loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernel*
dtype0*
_output_shapes
:
ë
XDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/minConst*
valueB
 *m½*L
_classB
@>loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernel*
dtype0*
_output_shapes
: 
ë
XDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/maxConst*
valueB
 *m=*L
_classB
@>loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernel*
dtype0*
_output_shapes
: 
î
bDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/RandomUniformRandomUniformZDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/shape*
T0*L
_classB
@>loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernel*
seed2 *
dtype0* 
_output_shapes
:
*

seed 

XDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/subSubXDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/maxXDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/min*
_output_shapes
: *
T0*L
_classB
@>loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernel

XDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/mulMulbDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/RandomUniformXDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/sub*
T0*L
_classB
@>loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernel* 
_output_shapes
:


TDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniformAddXDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/mulXDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform/min*
T0*L
_classB
@>loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernel* 
_output_shapes
:

ÿ
9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernel
VariableV2*
shape:
*
dtype0* 
_output_shapes
:
*
shared_name *L
_classB
@>loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernel*
	container 
ý
@Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernel/AssignAssign9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernelTDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*L
_classB
@>loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernel
°
>Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernel/readIdentity9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernel*
T0* 
_output_shapes
:

ð
YDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/bias/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
valueB:*J
_class@
><loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/bias*
dtype0
à
ODeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/bias/Initializer/zeros/ConstConst*
valueB
 *    *J
_class@
><loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/bias*
dtype0*
_output_shapes
: 

IDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/bias/Initializer/zerosFillYDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/bias/Initializer/zeros/shape_as_tensorODeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/bias/Initializer/zeros/Const*
T0*

index_type0*J
_class@
><loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/bias*
_output_shapes	
:
ñ
7Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/bias
VariableV2*
dtype0*
_output_shapes	
:*
shared_name *J
_class@
><loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/bias*
	container *
shape:
ç
>Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/bias/AssignAssign7Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/biasIDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/bias/Initializer/zeros*
_output_shapes	
:*
use_locking(*
T0*J
_class@
><loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/bias*
validate_shape(
§
<Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/bias/readIdentity7Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/bias*
T0*
_output_shapes	
:
Æ
GDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/concat/axisConst;^Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Ù
BDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/concatConcatV2CDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/TensorArrayReadV3<Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Identity_4GDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/concat/axis*
T0*
N*
_output_shapes
:	*

Tidx0
ª
BDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/MatMulMatMulBDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/concatHDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul/Enter*
_output_shapes
:	*
transpose_a( *
transpose_b( *
T0
»
HDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul/EnterEnter>Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernel/read*
parallel_iterations * 
_output_shapes
:
*O

frame_nameA?Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/while_context*
T0*
is_constant(

CDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/BiasAddBiasAddBDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/MatMulIDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/BiasAdd/Enter*
T0*
data_formatNHWC*
_output_shapes
:	
µ
IDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/BiasAdd/EnterEnter<Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/bias/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes	
:*O

frame_nameA?Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/while_context
À
ADeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/ConstConst;^Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Ê
KDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/split/split_dimConst;^Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Identity*
dtype0*
_output_shapes
: *
value	B :
¸
ADeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/splitSplitKDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/split/split_dimCDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/BiasAdd*@
_output_shapes.
,:	:	:	:	*
	num_split*
T0
Ã
ADeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/add/yConst;^Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Identity*
dtype0*
_output_shapes
: *
valueB
 *  ?
ø
?Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/addAddCDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/split:2ADeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/add/y*
T0*
_output_shapes
:	
¹
CDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/SigmoidSigmoid?Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/add*
T0*
_output_shapes
:	
ó
?Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/mulMulCDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/Sigmoid<Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Identity_3*
T0*
_output_shapes
:	
½
EDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/Sigmoid_1SigmoidADeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/split*
_output_shapes
:	*
T0
·
@Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/TanhTanhCDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/split:1*
T0*
_output_shapes
:	
û
ADeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1MulEDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/Sigmoid_1@Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/Tanh*
_output_shapes
:	*
T0
ö
ADeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/add_1Add?Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/mulADeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1*
T0*
_output_shapes
:	
¿
EDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/Sigmoid_2SigmoidCDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/split:3*
_output_shapes
:	*
T0
·
BDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/Tanh_1TanhADeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/add_1*
_output_shapes
:	*
T0
ý
ADeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2MulEDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/Sigmoid_2BDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/Tanh_1*
T0*
_output_shapes
:	
þ
UDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3[Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3/Enter<Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Identity_1ADeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2<Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Identity_2*
T0*T
_classJ
HFloc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2*
_output_shapes
: 

[Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnter7Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/TensorArray*
is_constant(*
_output_shapes
:*O

frame_nameA?Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/while_context*
T0*T
_classJ
HFloc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2*
parallel_iterations 
¸
9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/add_1/yConst;^Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Ø
7Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/add_1Add<Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Identity_19Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/add_1/y*
_output_shapes
: *
T0
¨
?Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/NextIterationNextIteration5Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/add*
T0*
_output_shapes
: 
¬
ADeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/NextIteration_1NextIteration7Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/add_1*
_output_shapes
: *
T0
Ê
ADeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/NextIteration_2NextIterationUDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
¿
ADeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/NextIteration_3NextIterationADeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/add_1*
_output_shapes
:	*
T0
¿
ADeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/NextIteration_4NextIterationADeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2*
T0*
_output_shapes
:	

6Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/ExitExit8Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Switch*
_output_shapes
: *
T0

8Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Exit_1Exit:Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Switch_1*
_output_shapes
: *
T0

8Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Exit_2Exit:Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Switch_2*
T0*
_output_shapes
: 
¦
8Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Exit_3Exit:Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Switch_3*
T0*
_output_shapes
:	
¦
8Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Exit_4Exit:Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Switch_4*
T0*
_output_shapes
:	
º
NDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/TensorArrayStack/TensorArraySizeV3TensorArraySizeV37Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/TensorArray8Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Exit_2*
_output_shapes
: *J
_class@
><loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/TensorArray
Ö
HDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/TensorArrayStack/range/startConst*
value	B : *J
_class@
><loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/TensorArray*
dtype0*
_output_shapes
: 
Ö
HDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/TensorArrayStack/range/deltaConst*
value	B :*J
_class@
><loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/TensorArray*
dtype0*
_output_shapes
: 
¬
BDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/TensorArrayStack/rangeRangeHDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/TensorArrayStack/range/startNDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/TensorArrayStack/TensorArraySizeV3HDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/TensorArrayStack/range/delta*J
_class@
><loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/TensorArray*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

Tidx0
º
PDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV37Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/TensorArrayBDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/TensorArrayStack/range8Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Exit_2*#
_output_shapes
:*
element_shape:	*J
_class@
><loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/TensorArray*
dtype0

3Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/Const_2Const*
valueB"      *
dtype0*
_output_shapes
:
~
3Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/Const_3Const*
valueB:*
dtype0*
_output_shapes
:
t
2Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
{
9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/range_1/startConst*
value	B :*
dtype0*
_output_shapes
: 
{
9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/range_1/deltaConst*
dtype0*
_output_shapes
: *
value	B :

3Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/range_1Range9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/range_1/start2Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/Rank_19Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/range_1/delta*
_output_shapes
:*

Tidx0

=Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/concat_2/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
{
9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/concat_2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
©
4Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/concat_2ConcatV2=Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/concat_2/values_03Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/range_19Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/concat_2/axis*
N*
_output_shapes
:*

Tidx0*
T0

7Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/transpose_1	TransposePDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/TensorArrayStack/TensorArrayGatherV34Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/concat_2*#
_output_shapes
:*
Tperm0*
T0

7Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/ReverseV2/axisConst*
valueB:*
dtype0*
_output_shapes
:
Ð
2Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/ReverseV2	ReverseV2Deep-LSTM/dropout_1/Identity7Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/ReverseV2/axis*#
_output_shapes
:*

Tidx0*
T0
r
0Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/RankConst*
value	B :*
dtype0*
_output_shapes
: 
y
7Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/range/startConst*
value	B :*
dtype0*
_output_shapes
: 
y
7Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/range/deltaConst*
_output_shapes
: *
value	B :*
dtype0

1Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/rangeRange7Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/range/start0Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/Rank7Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/range/delta*
_output_shapes
:*

Tidx0

;Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/concat/values_0Const*
_output_shapes
:*
valueB"       *
dtype0
y
7Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
¡
2Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/concatConcatV2;Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/concat/values_01Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/range7Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/concat/axis*
T0*
N*
_output_shapes
:*

Tidx0
å
5Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/transpose	Transpose2Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/ReverseV22Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/concat*
T0*#
_output_shapes
:*
Tperm0

CDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/LSTMCellZeroState/ConstConst*
valueB:*
dtype0*
_output_shapes
:

EDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/LSTMCellZeroState/Const_1Const*
valueB:*
dtype0*
_output_shapes
:

IDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/LSTMCellZeroState/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
á
DDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/LSTMCellZeroState/concatConcatV2CDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/LSTMCellZeroState/ConstEDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/LSTMCellZeroState/Const_1IDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/LSTMCellZeroState/concat/axis*
N*
_output_shapes
:*

Tidx0*
T0

IDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/LSTMCellZeroState/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

CDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/LSTMCellZeroState/zerosFillDDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/LSTMCellZeroState/concatIDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/LSTMCellZeroState/zeros/Const*
_output_shapes
:	*
T0*

index_type0

EDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/LSTMCellZeroState/Const_2Const*
dtype0*
_output_shapes
:*
valueB:

EDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/LSTMCellZeroState/Const_3Const*
valueB:*
dtype0*
_output_shapes
:

EDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/LSTMCellZeroState/Const_4Const*
valueB:*
dtype0*
_output_shapes
:

EDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/LSTMCellZeroState/Const_5Const*
dtype0*
_output_shapes
:*
valueB:

KDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/LSTMCellZeroState/concat_1/axisConst*
_output_shapes
: *
value	B : *
dtype0
ç
FDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/LSTMCellZeroState/concat_1ConcatV2EDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/LSTMCellZeroState/Const_4EDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/LSTMCellZeroState/Const_5KDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/LSTMCellZeroState/concat_1/axis*
N*
_output_shapes
:*

Tidx0*
T0

KDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/LSTMCellZeroState/zeros_1/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 

EDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/LSTMCellZeroState/zeros_1FillFDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/LSTMCellZeroState/concat_1KDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/LSTMCellZeroState/zeros_1/Const*
_output_shapes
:	*
T0*

index_type0

EDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/LSTMCellZeroState/Const_6Const*
valueB:*
dtype0*
_output_shapes
:

EDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/LSTMCellZeroState/Const_7Const*
dtype0*
_output_shapes
:*
valueB:

1Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/ShapeConst*!
valueB"         *
dtype0*
_output_shapes
:

?Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

ADeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:

ADeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
Õ
9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/strided_sliceStridedSlice1Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/Shape?Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/strided_slice/stackADeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/strided_slice/stack_1ADeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/strided_slice/stack_2*
Index0*
T0*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 
{
1Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/ConstConst*
valueB:*
dtype0*
_output_shapes
:
~
3Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/Const_1Const*
valueB:*
dtype0*
_output_shapes
:
{
9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 

4Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/concat_1ConcatV21Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/Const3Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/Const_19Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/concat_1/axis*

Tidx0*
T0*
N*
_output_shapes
:
|
7Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/zeros/ConstConst*
valueB
 *    *
dtype0*
_output_shapes
: 
ä
1Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/zerosFill4Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/concat_17Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/zeros/Const*
T0*

index_type0*
_output_shapes
:	
r
0Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/timeConst*
value	B : *
dtype0*
_output_shapes
: 
ñ
7Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/TensorArrayTensorArrayV39Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/strided_slice*
element_shape:	*
dynamic_size( *
clear_after_read(*
identical_element_shapes(*W
tensor_array_nameB@Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/dynamic_rnn/output_0*
dtype0*
_output_shapes

:: 
ò
9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/TensorArray_1TensorArrayV39Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/strided_slice*V
tensor_array_nameA?Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/dynamic_rnn/input_0*
dtype0*
_output_shapes

:: *
element_shape:	*
dynamic_size( *
clear_after_read(*
identical_element_shapes(

DDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/TensorArrayUnstack/ShapeConst*
_output_shapes
:*!
valueB"         *
dtype0

RDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:

TDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice/stack_1Const*
dtype0*
_output_shapes
:*
valueB:

TDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:
´
LDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_sliceStridedSliceDDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/TensorArrayUnstack/ShapeRDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice/stackTDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice/stack_1TDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_slice/stack_2*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask

JDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/TensorArrayUnstack/range/startConst*
value	B : *
dtype0*
_output_shapes
: 

JDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/TensorArrayUnstack/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
Û
DDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/TensorArrayUnstack/rangeRangeJDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/TensorArrayUnstack/range/startLDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/TensorArrayUnstack/strided_sliceJDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/TensorArrayUnstack/range/delta*
_output_shapes
:*

Tidx0
Þ
fDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3TensorArrayScatterV39Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/TensorArray_1DDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/TensorArrayUnstack/range5Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/transpose;Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/TensorArray_1:1*
T0*H
_class>
<:loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/transpose*
_output_shapes
: 
w
5Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/Maximum/xConst*
value	B :*
dtype0*
_output_shapes
: 
Ñ
3Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/MaximumMaximum5Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/Maximum/x9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/strided_slice*
T0*
_output_shapes
: 
Ï
3Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/MinimumMinimum9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/strided_slice3Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/Maximum*
_output_shapes
: *
T0

CDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/iteration_counterConst*
value	B : *
dtype0*
_output_shapes
: 
¥
7Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/EnterEnterCDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/iteration_counter*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *O

frame_nameA?Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/while_context

9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Enter_1Enter0Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/time*
_output_shapes
: *O

frame_nameA?Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant( *
parallel_iterations 

9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Enter_2Enter9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/TensorArray:1*
T0*
is_constant( *
parallel_iterations *
_output_shapes
: *O

frame_nameA?Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/while_context
°
9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Enter_3EnterCDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/LSTMCellZeroState/zeros*
parallel_iterations *
_output_shapes
:	*O

frame_nameA?Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant( 
²
9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Enter_4EnterEDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/LSTMCellZeroState/zeros_1*
parallel_iterations *
_output_shapes
:	*O

frame_nameA?Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant( 
æ
7Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/MergeMerge7Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Enter?Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/NextIteration*
T0*
N*
_output_shapes
: : 
ì
9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Merge_1Merge9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Enter_1ADeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/NextIteration_1*
_output_shapes
: : *
T0*
N
ì
9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Merge_2Merge9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Enter_2ADeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/NextIteration_2*
N*
_output_shapes
: : *
T0
õ
9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Merge_3Merge9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Enter_3ADeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/NextIteration_3*
N*!
_output_shapes
:	: *
T0
õ
9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Merge_4Merge9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Enter_4ADeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/NextIteration_4*
T0*
N*!
_output_shapes
:	: 
Ö
6Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/LessLess7Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Merge<Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Less/Enter*
T0*
_output_shapes
: 
 
<Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Less/EnterEnter9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/strided_slice*
parallel_iterations *
_output_shapes
: *O

frame_nameA?Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/while_context*
T0*
is_constant(
Ü
8Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Less_1Less9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Merge_1>Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Less_1/Enter*
T0*
_output_shapes
: 

>Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Less_1/EnterEnter3Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/Minimum*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *O

frame_nameA?Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/while_context
Ô
<Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/LogicalAnd
LogicalAnd6Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Less8Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Less_1*
_output_shapes
: 

:Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/LoopCondLoopCond<Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/LogicalAnd*
_output_shapes
: 
¦
8Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/SwitchSwitch7Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Merge:Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/LoopCond*
T0*J
_class@
><loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Merge*
_output_shapes
: : 
¬
:Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Switch_1Switch9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Merge_1:Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/LoopCond*
T0*L
_classB
@>loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Merge_1*
_output_shapes
: : 
¬
:Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Switch_2Switch9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Merge_2:Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/LoopCond*
T0*L
_classB
@>loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Merge_2*
_output_shapes
: : 
¾
:Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Switch_3Switch9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Merge_3:Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/LoopCond*
T0*L
_classB
@>loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Merge_3**
_output_shapes
:	:	
¾
:Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Switch_4Switch9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Merge_4:Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/LoopCond*L
_classB
@>loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Merge_4**
_output_shapes
:	:	*
T0
£
:Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/IdentityIdentity:Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Switch:1*
T0*
_output_shapes
: 
§
<Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Identity_1Identity<Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Switch_1:1*
_output_shapes
: *
T0
§
<Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Identity_2Identity<Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Switch_2:1*
T0*
_output_shapes
: 
°
<Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Identity_3Identity<Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Switch_3:1*
_output_shapes
:	*
T0
°
<Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Identity_4Identity<Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Switch_4:1*
T0*
_output_shapes
:	
¶
7Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/add/yConst;^Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Ò
5Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/addAdd:Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Identity7Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/add/y*
T0*
_output_shapes
: 
Ü
CDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/TensorArrayReadV3TensorArrayReadV3IDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter<Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Identity_1KDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1*
dtype0*
_output_shapes
:	
±
IDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/EnterEnter9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/TensorArray_1*
is_constant(*
parallel_iterations *
_output_shapes
:*O

frame_nameA?Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/while_context*
T0
Ü
KDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1EnterfDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3*
T0*
is_constant(*
parallel_iterations *
_output_shapes
: *O

frame_nameA?Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/while_context
ù
ZDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/shapeConst*
valueB"      *L
_classB
@>loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernel*
dtype0*
_output_shapes
:
ë
XDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/minConst*
dtype0*
_output_shapes
: *
valueB
 *m½*L
_classB
@>loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernel
ë
XDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/maxConst*
valueB
 *m=*L
_classB
@>loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernel*
dtype0*
_output_shapes
: 
î
bDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/RandomUniformRandomUniformZDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/shape*

seed *
T0*L
_classB
@>loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernel*
seed2 *
dtype0* 
_output_shapes
:


XDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/subSubXDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/maxXDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/min*
T0*L
_classB
@>loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernel*
_output_shapes
: 

XDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/mulMulbDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/RandomUniformXDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/sub*
T0*L
_classB
@>loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernel* 
_output_shapes
:


TDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniformAddXDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/mulXDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform/min*
T0*L
_classB
@>loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernel* 
_output_shapes
:

ÿ
9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernel
VariableV2*
dtype0* 
_output_shapes
:
*
shared_name *L
_classB
@>loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernel*
	container *
shape:

ý
@Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernel/AssignAssign9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernelTDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*L
_classB
@>loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernel
°
>Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernel/readIdentity9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernel* 
_output_shapes
:
*
T0
ð
YDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/bias/Initializer/zeros/shape_as_tensorConst*
_output_shapes
:*
valueB:*J
_class@
><loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/bias*
dtype0
à
ODeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/bias/Initializer/zeros/ConstConst*
dtype0*
_output_shapes
: *
valueB
 *    *J
_class@
><loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/bias

IDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/bias/Initializer/zerosFillYDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/bias/Initializer/zeros/shape_as_tensorODeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/bias/Initializer/zeros/Const*
_output_shapes	
:*
T0*

index_type0*J
_class@
><loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/bias
ñ
7Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/bias
VariableV2*
_output_shapes	
:*
shared_name *J
_class@
><loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/bias*
	container *
shape:*
dtype0
ç
>Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/bias/AssignAssign7Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/biasIDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/bias/Initializer/zeros*
_output_shapes	
:*
use_locking(*
T0*J
_class@
><loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/bias*
validate_shape(
§
<Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/bias/readIdentity7Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/bias*
_output_shapes	
:*
T0
Æ
GDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/concat/axisConst;^Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Identity*
dtype0*
_output_shapes
: *
value	B :
Ù
BDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/concatConcatV2CDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/TensorArrayReadV3<Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Identity_4GDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/concat/axis*
T0*
N*
_output_shapes
:	*

Tidx0
ª
BDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/MatMulMatMulBDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/concatHDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul/Enter*
_output_shapes
:	*
transpose_a( *
transpose_b( *
T0
»
HDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul/EnterEnter>Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernel/read*
T0*
is_constant(*
parallel_iterations * 
_output_shapes
:
*O

frame_nameA?Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/while_context

CDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/BiasAddBiasAddBDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/MatMulIDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/BiasAdd/Enter*
_output_shapes
:	*
T0*
data_formatNHWC
µ
IDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/BiasAdd/EnterEnter<Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/bias/read*
T0*
is_constant(*
parallel_iterations *
_output_shapes	
:*O

frame_nameA?Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/while_context
À
ADeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/ConstConst;^Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Identity*
value	B :*
dtype0*
_output_shapes
: 
Ê
KDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/split/split_dimConst;^Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Identity*
dtype0*
_output_shapes
: *
value	B :
¸
ADeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/splitSplitKDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/split/split_dimCDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/BiasAdd*@
_output_shapes.
,:	:	:	:	*
	num_split*
T0
Ã
ADeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/add/yConst;^Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Identity*
dtype0*
_output_shapes
: *
valueB
 *  ?
ø
?Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/addAddCDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/split:2ADeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/add/y*
_output_shapes
:	*
T0
¹
CDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/SigmoidSigmoid?Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/add*
_output_shapes
:	*
T0
ó
?Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/mulMulCDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/Sigmoid<Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Identity_3*
T0*
_output_shapes
:	
½
EDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/Sigmoid_1SigmoidADeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/split*
T0*
_output_shapes
:	
·
@Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/TanhTanhCDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/split:1*
T0*
_output_shapes
:	
û
ADeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1MulEDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/Sigmoid_1@Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/Tanh*
T0*
_output_shapes
:	
ö
ADeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/add_1Add?Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/mulADeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1*
T0*
_output_shapes
:	
¿
EDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/Sigmoid_2SigmoidCDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/split:3*
_output_shapes
:	*
T0
·
BDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/Tanh_1TanhADeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/add_1*
T0*
_output_shapes
:	
ý
ADeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2MulEDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/Sigmoid_2BDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/Tanh_1*
_output_shapes
:	*
T0
þ
UDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3TensorArrayWriteV3[Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3/Enter<Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Identity_1ADeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2<Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Identity_2*
T0*T
_classJ
HFloc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2*
_output_shapes
: 

[Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3/EnterEnter7Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/TensorArray*
T0*T
_classJ
HFloc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2*
parallel_iterations *
is_constant(*O

frame_nameA?Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/while_context*
_output_shapes
:
¸
9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/add_1/yConst;^Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Identity*
dtype0*
_output_shapes
: *
value	B :
Ø
7Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/add_1Add<Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Identity_19Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/add_1/y*
T0*
_output_shapes
: 
¨
?Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/NextIterationNextIteration5Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/add*
T0*
_output_shapes
: 
¬
ADeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/NextIteration_1NextIteration7Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/add_1*
T0*
_output_shapes
: 
Ê
ADeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/NextIteration_2NextIterationUDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3*
T0*
_output_shapes
: 
¿
ADeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/NextIteration_3NextIterationADeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/add_1*
_output_shapes
:	*
T0
¿
ADeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/NextIteration_4NextIterationADeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2*
_output_shapes
:	*
T0

6Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/ExitExit8Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Switch*
_output_shapes
: *
T0

8Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Exit_1Exit:Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Switch_1*
T0*
_output_shapes
: 

8Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Exit_2Exit:Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Switch_2*
T0*
_output_shapes
: 
¦
8Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Exit_3Exit:Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Switch_3*
T0*
_output_shapes
:	
¦
8Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Exit_4Exit:Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Switch_4*
T0*
_output_shapes
:	
º
NDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/TensorArrayStack/TensorArraySizeV3TensorArraySizeV37Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/TensorArray8Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Exit_2*J
_class@
><loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/TensorArray*
_output_shapes
: 
Ö
HDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/TensorArrayStack/range/startConst*
dtype0*
_output_shapes
: *
value	B : *J
_class@
><loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/TensorArray
Ö
HDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/TensorArrayStack/range/deltaConst*
value	B :*J
_class@
><loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/TensorArray*
dtype0*
_output_shapes
: 
¬
BDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/TensorArrayStack/rangeRangeHDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/TensorArrayStack/range/startNDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/TensorArrayStack/TensorArraySizeV3HDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/TensorArrayStack/range/delta*J
_class@
><loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/TensorArray*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

Tidx0
º
PDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/TensorArrayStack/TensorArrayGatherV3TensorArrayGatherV37Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/TensorArrayBDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/TensorArrayStack/range8Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Exit_2*#
_output_shapes
:*
element_shape:	*J
_class@
><loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/TensorArray*
dtype0

3Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/Const_2Const*
valueB"      *
dtype0*
_output_shapes
:
~
3Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/Const_3Const*
_output_shapes
:*
valueB:*
dtype0
t
2Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/Rank_1Const*
dtype0*
_output_shapes
: *
value	B :
{
9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/range_1/startConst*
dtype0*
_output_shapes
: *
value	B :
{
9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/range_1/deltaConst*
_output_shapes
: *
value	B :*
dtype0

3Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/range_1Range9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/range_1/start2Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/Rank_19Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/range_1/delta*

Tidx0*
_output_shapes
:

=Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/concat_2/values_0Const*
valueB"       *
dtype0*
_output_shapes
:
{
9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/concat_2/axisConst*
dtype0*
_output_shapes
: *
value	B : 
©
4Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/concat_2ConcatV2=Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/concat_2/values_03Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/range_19Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/concat_2/axis*

Tidx0*
T0*
N*
_output_shapes
:

7Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/transpose_1	TransposePDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/TensorArrayStack/TensorArrayGatherV34Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/concat_2*#
_output_shapes
:*
Tperm0*
T0
l
"Deep-LSTM/bd-lstm_2/ReverseV2/axisConst*
valueB:*
dtype0*
_output_shapes
:
Á
Deep-LSTM/bd-lstm_2/ReverseV2	ReverseV27Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/transpose_1"Deep-LSTM/bd-lstm_2/ReverseV2/axis*

Tidx0*
T0*#
_output_shapes
:
a
Deep-LSTM/bd-lstm_2/concat/axisConst*
value	B :*
dtype0*
_output_shapes
: 
â
Deep-LSTM/bd-lstm_2/concatConcatV27Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/transpose_1Deep-LSTM/bd-lstm_2/ReverseV2Deep-LSTM/bd-lstm_2/concat/axis*

Tidx0*
T0*
N*#
_output_shapes
:
r
Deep-LSTM/dropout_2/IdentityIdentityDeep-LSTM/bd-lstm_2/concat*
T0*#
_output_shapes
:
s
Deep-LSTM/LSTM2-weights/tagConst*(
valueB BDeep-LSTM/LSTM2-weights*
dtype0*
_output_shapes
: 
©
Deep-LSTM/LSTM2-weightsHistogramSummaryDeep-LSTM/LSTM2-weights/tag>Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernel/read*
_output_shapes
: *
T0
q
Deep-LSTM/LSTM2-Biases/tagConst*'
valueB BDeep-LSTM/LSTM2-Biases*
dtype0*
_output_shapes
: 
¥
Deep-LSTM/LSTM2-BiasesHistogramSummaryDeep-LSTM/LSTM2-Biases/tag<Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/bias/read*
T0*
_output_shapes
: 
m
Lstm-to-logits/Reshape/shapeConst*
valueB"ÿÿÿÿ   *
dtype0*
_output_shapes
:

Lstm-to-logits/ReshapeReshapeDeep-LSTM/dropout_2/IdentityLstm-to-logits/Reshape/shape*
T0*
Tshape0*
_output_shapes
:	
v
%Lstm-to-logits/truncated_normal/shapeConst*
dtype0*
_output_shapes
:*
valueB"   Z   
i
$Lstm-to-logits/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
k
&Lstm-to-logits/truncated_normal/stddevConst*
dtype0*
_output_shapes
: *
valueB
 *ÍÌÌ=
¹
/Lstm-to-logits/truncated_normal/TruncatedNormalTruncatedNormal%Lstm-to-logits/truncated_normal/shape*
_output_shapes
:	Z*
seed2 *

seed *
T0*
dtype0
­
#Lstm-to-logits/truncated_normal/mulMul/Lstm-to-logits/truncated_normal/TruncatedNormal&Lstm-to-logits/truncated_normal/stddev*
T0*
_output_shapes
:	Z

Lstm-to-logits/truncated_normalAdd#Lstm-to-logits/truncated_normal/mul$Lstm-to-logits/truncated_normal/mean*
T0*
_output_shapes
:	Z

Lstm-to-logits/W
VariableV2*
dtype0*
_output_shapes
:	Z*
	container *
shape:	Z*
shared_name 
Ì
Lstm-to-logits/W/AssignAssignLstm-to-logits/WLstm-to-logits/truncated_normal*
use_locking(*
T0*#
_class
loc:@Lstm-to-logits/W*
validate_shape(*
_output_shapes
:	Z

Lstm-to-logits/W/readIdentityLstm-to-logits/W*
_output_shapes
:	Z*
T0*#
_class
loc:@Lstm-to-logits/W
a
Lstm-to-logits/ConstConst*
valueBZ*    *
dtype0*
_output_shapes
:Z
|
Lstm-to-logits/b
VariableV2*
shared_name *
dtype0*
_output_shapes
:Z*
	container *
shape:Z
¼
Lstm-to-logits/b/AssignAssignLstm-to-logits/bLstm-to-logits/Const*
_output_shapes
:Z*
use_locking(*
T0*#
_class
loc:@Lstm-to-logits/b*
validate_shape(
}
Lstm-to-logits/b/readIdentityLstm-to-logits/b*
T0*#
_class
loc:@Lstm-to-logits/b*
_output_shapes
:Z

Lstm-to-logits/MatMulMatMulLstm-to-logits/ReshapeLstm-to-logits/W/read*
_output_shapes

:Z*
transpose_a( *
transpose_b( *
T0
p
Lstm-to-logits/addAddLstm-to-logits/MatMulLstm-to-logits/b/read*
T0*
_output_shapes

:Z
s
Lstm-to-logits/Reshape_1/shapeConst*
dtype0*
_output_shapes
:*!
valueB"   ÿÿÿÿZ   

Lstm-to-logits/Reshape_1ReshapeLstm-to-logits/addLstm-to-logits/Reshape_1/shape*
T0*
Tshape0*"
_output_shapes
:Z
r
Lstm-to-logits/transpose/permConst*
dtype0*
_output_shapes
:*!
valueB"          

Lstm-to-logits/transpose	TransposeLstm-to-logits/Reshape_1Lstm-to-logits/transpose/perm*
T0*"
_output_shapes
:Z*
Tperm0

!Lstm-to-logits/Logits-weights/tagConst*
dtype0*
_output_shapes
: *.
value%B# BLstm-to-logits/Logits-weights

$Lstm-to-logits/Logits-weights/valuesPackLstm-to-logits/W/read*

axis *
N*#
_output_shapes
:Z*
T0

Lstm-to-logits/Logits-weightsHistogramSummary!Lstm-to-logits/Logits-weights/tag$Lstm-to-logits/Logits-weights/values*
T0*
_output_shapes
: 
}
 Lstm-to-logits/Logits-Biases/tagConst*-
value$B" BLstm-to-logits/Logits-Biases*
dtype0*
_output_shapes
: 

#Lstm-to-logits/Logits-Biases/valuesPackLstm-to-logits/b/read*
T0*

axis *
N*
_output_shapes

:Z

Lstm-to-logits/Logits-BiasesHistogramSummary Lstm-to-logits/Logits-Biases/tag#Lstm-to-logits/Logits-Biases/values*
_output_shapes
: *
T0
Z
ShapeConst*
dtype0*
_output_shapes
:*!
valueB"      Z   
]
strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
_
strided_slice/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
_
strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ù
strided_sliceStridedSliceShapestrided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0*
shrink_axis_mask*

begin_mask *
ellipsis_mask 

3Sparse-Decoded/CTCBeamSearchDecoder/sequence_lengthPackstrided_slice*
N*
_output_shapes
:*
T0*

axis 

#Sparse-Decoded/CTCBeamSearchDecoderCTCBeamSearchDecoderLstm-to-logits/transpose3Sparse-Decoded/CTCBeamSearchDecoder/sequence_length*
	top_paths*F
_output_shapes4
2:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ::*

beam_widthd*
merge_repeated( 
k
)Dense-Decoded/SparseToDense/default_valueConst*
value	B	 R *
dtype0	*
_output_shapes
: 
­
Dense-Decoded/SparseToDenseSparseToDense#Sparse-Decoded/CTCBeamSearchDecoder%Sparse-Decoded/CTCBeamSearchDecoder:2%Sparse-Decoded/CTCBeamSearchDecoder:1)Dense-Decoded/SparseToDense/default_value*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
Tindices0	*
validate_indices(*
T0	
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
shape: *
dtype0*
_output_shapes
: 
e

save/ConstPlaceholderWithDefaultsave/filename*
_output_shapes
: *
shape: *
dtype0
Ð	
save/SaveV2/tensor_namesConst*	
valueùBö B!Deep-CNN/batch_normalization/betaB"Deep-CNN/batch_normalization/gammaB(Deep-CNN/batch_normalization/moving_meanB,Deep-CNN/batch_normalization/moving_varianceB#Deep-CNN/batch_normalization_1/betaB$Deep-CNN/batch_normalization_1/gammaB*Deep-CNN/batch_normalization_1/moving_meanB.Deep-CNN/batch_normalization_1/moving_varianceBDeep-CNN/conv1/biasBDeep-CNN/conv1/kernelBDeep-CNN/conv2/biasBDeep-CNN/conv2/kernelBDeep-CNN/conv3/biasBDeep-CNN/conv3/kernelBDeep-CNN/conv4/biasBDeep-CNN/conv4/kernelBDeep-CNN/conv5/biasBDeep-CNN/conv5/kernelBDeep-CNN/conv6/biasBDeep-CNN/conv6/kernelBDeep-CNN/conv7/biasBDeep-CNN/conv7/kernelB7Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/biasB9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernelB7Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/biasB9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernelB7Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/biasB9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernelB7Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/biasB9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernelBLstm-to-logits/WBLstm-to-logits/b*
dtype0*
_output_shapes
: 
£
save/SaveV2/shape_and_slicesConst*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
: 
÷	
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slices!Deep-CNN/batch_normalization/beta"Deep-CNN/batch_normalization/gamma(Deep-CNN/batch_normalization/moving_mean,Deep-CNN/batch_normalization/moving_variance#Deep-CNN/batch_normalization_1/beta$Deep-CNN/batch_normalization_1/gamma*Deep-CNN/batch_normalization_1/moving_mean.Deep-CNN/batch_normalization_1/moving_varianceDeep-CNN/conv1/biasDeep-CNN/conv1/kernelDeep-CNN/conv2/biasDeep-CNN/conv2/kernelDeep-CNN/conv3/biasDeep-CNN/conv3/kernelDeep-CNN/conv4/biasDeep-CNN/conv4/kernelDeep-CNN/conv5/biasDeep-CNN/conv5/kernelDeep-CNN/conv6/biasDeep-CNN/conv6/kernelDeep-CNN/conv7/biasDeep-CNN/conv7/kernel7Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/bias9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernel7Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/bias9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernel7Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/bias9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernel7Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/bias9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernelLstm-to-logits/WLstm-to-logits/b*.
dtypes$
"2 
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
_output_shapes
: *
T0*
_class
loc:@save/Const
Ó	
save/RestoreV2/tensor_namesConst*	
valueùBö B!Deep-CNN/batch_normalization/betaB"Deep-CNN/batch_normalization/gammaB(Deep-CNN/batch_normalization/moving_meanB,Deep-CNN/batch_normalization/moving_varianceB#Deep-CNN/batch_normalization_1/betaB$Deep-CNN/batch_normalization_1/gammaB*Deep-CNN/batch_normalization_1/moving_meanB.Deep-CNN/batch_normalization_1/moving_varianceBDeep-CNN/conv1/biasBDeep-CNN/conv1/kernelBDeep-CNN/conv2/biasBDeep-CNN/conv2/kernelBDeep-CNN/conv3/biasBDeep-CNN/conv3/kernelBDeep-CNN/conv4/biasBDeep-CNN/conv4/kernelBDeep-CNN/conv5/biasBDeep-CNN/conv5/kernelBDeep-CNN/conv6/biasBDeep-CNN/conv6/kernelBDeep-CNN/conv7/biasBDeep-CNN/conv7/kernelB7Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/biasB9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernelB7Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/biasB9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernelB7Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/biasB9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernelB7Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/biasB9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernelBLstm-to-logits/WBLstm-to-logits/b*
dtype0*
_output_shapes
: 
¦
save/RestoreV2/shape_and_slicesConst*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
: 
®
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
_output_shapes
::::::::::::::::::::::::::::::::*.
dtypes$
"2 
Í
save/AssignAssign!Deep-CNN/batch_normalization/betasave/RestoreV2*
_output_shapes	
:*
use_locking(*
T0*4
_class*
(&loc:@Deep-CNN/batch_normalization/beta*
validate_shape(
Ó
save/Assign_1Assign"Deep-CNN/batch_normalization/gammasave/RestoreV2:1*
use_locking(*
T0*5
_class+
)'loc:@Deep-CNN/batch_normalization/gamma*
validate_shape(*
_output_shapes	
:
ß
save/Assign_2Assign(Deep-CNN/batch_normalization/moving_meansave/RestoreV2:2*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*;
_class1
/-loc:@Deep-CNN/batch_normalization/moving_mean
ç
save/Assign_3Assign,Deep-CNN/batch_normalization/moving_variancesave/RestoreV2:3*
use_locking(*
T0*?
_class5
31loc:@Deep-CNN/batch_normalization/moving_variance*
validate_shape(*
_output_shapes	
:
Õ
save/Assign_4Assign#Deep-CNN/batch_normalization_1/betasave/RestoreV2:4*
T0*6
_class,
*(loc:@Deep-CNN/batch_normalization_1/beta*
validate_shape(*
_output_shapes	
:*
use_locking(
×
save/Assign_5Assign$Deep-CNN/batch_normalization_1/gammasave/RestoreV2:5*
_output_shapes	
:*
use_locking(*
T0*7
_class-
+)loc:@Deep-CNN/batch_normalization_1/gamma*
validate_shape(
ã
save/Assign_6Assign*Deep-CNN/batch_normalization_1/moving_meansave/RestoreV2:6*
use_locking(*
T0*=
_class3
1/loc:@Deep-CNN/batch_normalization_1/moving_mean*
validate_shape(*
_output_shapes	
:
ë
save/Assign_7Assign.Deep-CNN/batch_normalization_1/moving_variancesave/RestoreV2:7*
use_locking(*
T0*A
_class7
53loc:@Deep-CNN/batch_normalization_1/moving_variance*
validate_shape(*
_output_shapes	
:
µ
save/Assign_8AssignDeep-CNN/conv1/biassave/RestoreV2:8*
T0*&
_class
loc:@Deep-CNN/conv1/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
Å
save/Assign_9AssignDeep-CNN/conv1/kernelsave/RestoreV2:9*
use_locking(*
T0*(
_class
loc:@Deep-CNN/conv1/kernel*
validate_shape(*'
_output_shapes
:
·
save/Assign_10AssignDeep-CNN/conv2/biassave/RestoreV2:10*&
_class
loc:@Deep-CNN/conv2/bias*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
È
save/Assign_11AssignDeep-CNN/conv2/kernelsave/RestoreV2:11*
use_locking(*
T0*(
_class
loc:@Deep-CNN/conv2/kernel*
validate_shape(*(
_output_shapes
:
·
save/Assign_12AssignDeep-CNN/conv3/biassave/RestoreV2:12*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*&
_class
loc:@Deep-CNN/conv3/bias
È
save/Assign_13AssignDeep-CNN/conv3/kernelsave/RestoreV2:13*
use_locking(*
T0*(
_class
loc:@Deep-CNN/conv3/kernel*
validate_shape(*(
_output_shapes
:
·
save/Assign_14AssignDeep-CNN/conv4/biassave/RestoreV2:14*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*&
_class
loc:@Deep-CNN/conv4/bias
È
save/Assign_15AssignDeep-CNN/conv4/kernelsave/RestoreV2:15*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*(
_class
loc:@Deep-CNN/conv4/kernel
·
save/Assign_16AssignDeep-CNN/conv5/biassave/RestoreV2:16*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*&
_class
loc:@Deep-CNN/conv5/bias
È
save/Assign_17AssignDeep-CNN/conv5/kernelsave/RestoreV2:17*
use_locking(*
T0*(
_class
loc:@Deep-CNN/conv5/kernel*
validate_shape(*(
_output_shapes
:
·
save/Assign_18AssignDeep-CNN/conv6/biassave/RestoreV2:18*
T0*&
_class
loc:@Deep-CNN/conv6/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
È
save/Assign_19AssignDeep-CNN/conv6/kernelsave/RestoreV2:19*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*(
_class
loc:@Deep-CNN/conv6/kernel
·
save/Assign_20AssignDeep-CNN/conv7/biassave/RestoreV2:20*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*&
_class
loc:@Deep-CNN/conv7/bias
È
save/Assign_21AssignDeep-CNN/conv7/kernelsave/RestoreV2:21*
use_locking(*
T0*(
_class
loc:@Deep-CNN/conv7/kernel*
validate_shape(*(
_output_shapes
:
ÿ
save/Assign_22Assign7Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/biassave/RestoreV2:22*
use_locking(*
T0*J
_class@
><loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/bias*
validate_shape(*
_output_shapes	
:

save/Assign_23Assign9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernelsave/RestoreV2:23*
T0*L
_classB
@>loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
:*
use_locking(
ÿ
save/Assign_24Assign7Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/biassave/RestoreV2:24*
use_locking(*
T0*J
_class@
><loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/bias*
validate_shape(*
_output_shapes	
:

save/Assign_25Assign9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernelsave/RestoreV2:25*
T0*L
_classB
@>loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
:*
use_locking(
ÿ
save/Assign_26Assign7Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/biassave/RestoreV2:26*
use_locking(*
T0*J
_class@
><loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/bias*
validate_shape(*
_output_shapes	
:

save/Assign_27Assign9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernelsave/RestoreV2:27* 
_output_shapes
:
*
use_locking(*
T0*L
_classB
@>loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernel*
validate_shape(
ÿ
save/Assign_28Assign7Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/biassave/RestoreV2:28*
_output_shapes	
:*
use_locking(*
T0*J
_class@
><loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/bias*
validate_shape(

save/Assign_29Assign9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernelsave/RestoreV2:29*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*L
_classB
@>loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernel
µ
save/Assign_30AssignLstm-to-logits/Wsave/RestoreV2:30*
validate_shape(*
_output_shapes
:	Z*
use_locking(*
T0*#
_class
loc:@Lstm-to-logits/W
°
save/Assign_31AssignLstm-to-logits/bsave/RestoreV2:31*#
_class
loc:@Lstm-to-logits/b*
validate_shape(*
_output_shapes
:Z*
use_locking(*
T0
¬
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_31^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9
[
save_1/filename/inputConst*
dtype0*
_output_shapes
: *
valueB Bmodel
r
save_1/filenamePlaceholderWithDefaultsave_1/filename/input*
dtype0*
_output_shapes
: *
shape: 
i
save_1/ConstPlaceholderWithDefaultsave_1/filename*
_output_shapes
: *
shape: *
dtype0
Ò	
save_1/SaveV2/tensor_namesConst*	
valueùBö B!Deep-CNN/batch_normalization/betaB"Deep-CNN/batch_normalization/gammaB(Deep-CNN/batch_normalization/moving_meanB,Deep-CNN/batch_normalization/moving_varianceB#Deep-CNN/batch_normalization_1/betaB$Deep-CNN/batch_normalization_1/gammaB*Deep-CNN/batch_normalization_1/moving_meanB.Deep-CNN/batch_normalization_1/moving_varianceBDeep-CNN/conv1/biasBDeep-CNN/conv1/kernelBDeep-CNN/conv2/biasBDeep-CNN/conv2/kernelBDeep-CNN/conv3/biasBDeep-CNN/conv3/kernelBDeep-CNN/conv4/biasBDeep-CNN/conv4/kernelBDeep-CNN/conv5/biasBDeep-CNN/conv5/kernelBDeep-CNN/conv6/biasBDeep-CNN/conv6/kernelBDeep-CNN/conv7/biasBDeep-CNN/conv7/kernelB7Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/biasB9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernelB7Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/biasB9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernelB7Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/biasB9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernelB7Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/biasB9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernelBLstm-to-logits/WBLstm-to-logits/b*
dtype0*
_output_shapes
: 
¥
save_1/SaveV2/shape_and_slicesConst*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
: 
ÿ	
save_1/SaveV2SaveV2save_1/Constsave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slices!Deep-CNN/batch_normalization/beta"Deep-CNN/batch_normalization/gamma(Deep-CNN/batch_normalization/moving_mean,Deep-CNN/batch_normalization/moving_variance#Deep-CNN/batch_normalization_1/beta$Deep-CNN/batch_normalization_1/gamma*Deep-CNN/batch_normalization_1/moving_mean.Deep-CNN/batch_normalization_1/moving_varianceDeep-CNN/conv1/biasDeep-CNN/conv1/kernelDeep-CNN/conv2/biasDeep-CNN/conv2/kernelDeep-CNN/conv3/biasDeep-CNN/conv3/kernelDeep-CNN/conv4/biasDeep-CNN/conv4/kernelDeep-CNN/conv5/biasDeep-CNN/conv5/kernelDeep-CNN/conv6/biasDeep-CNN/conv6/kernelDeep-CNN/conv7/biasDeep-CNN/conv7/kernel7Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/bias9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernel7Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/bias9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernel7Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/bias9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernel7Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/bias9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernelLstm-to-logits/WLstm-to-logits/b*.
dtypes$
"2 

save_1/control_dependencyIdentitysave_1/Const^save_1/SaveV2*
_class
loc:@save_1/Const*
_output_shapes
: *
T0
Õ	
save_1/RestoreV2/tensor_namesConst*
dtype0*
_output_shapes
: *	
valueùBö B!Deep-CNN/batch_normalization/betaB"Deep-CNN/batch_normalization/gammaB(Deep-CNN/batch_normalization/moving_meanB,Deep-CNN/batch_normalization/moving_varianceB#Deep-CNN/batch_normalization_1/betaB$Deep-CNN/batch_normalization_1/gammaB*Deep-CNN/batch_normalization_1/moving_meanB.Deep-CNN/batch_normalization_1/moving_varianceBDeep-CNN/conv1/biasBDeep-CNN/conv1/kernelBDeep-CNN/conv2/biasBDeep-CNN/conv2/kernelBDeep-CNN/conv3/biasBDeep-CNN/conv3/kernelBDeep-CNN/conv4/biasBDeep-CNN/conv4/kernelBDeep-CNN/conv5/biasBDeep-CNN/conv5/kernelBDeep-CNN/conv6/biasBDeep-CNN/conv6/kernelBDeep-CNN/conv7/biasBDeep-CNN/conv7/kernelB7Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/biasB9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernelB7Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/biasB9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernelB7Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/biasB9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernelB7Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/biasB9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernelBLstm-to-logits/WBLstm-to-logits/b
¨
!save_1/RestoreV2/shape_and_slicesConst*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
: 
¶
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*
_output_shapes
::::::::::::::::::::::::::::::::*.
dtypes$
"2 
Ñ
save_1/AssignAssign!Deep-CNN/batch_normalization/betasave_1/RestoreV2*
use_locking(*
T0*4
_class*
(&loc:@Deep-CNN/batch_normalization/beta*
validate_shape(*
_output_shapes	
:
×
save_1/Assign_1Assign"Deep-CNN/batch_normalization/gammasave_1/RestoreV2:1*
T0*5
_class+
)'loc:@Deep-CNN/batch_normalization/gamma*
validate_shape(*
_output_shapes	
:*
use_locking(
ã
save_1/Assign_2Assign(Deep-CNN/batch_normalization/moving_meansave_1/RestoreV2:2*
use_locking(*
T0*;
_class1
/-loc:@Deep-CNN/batch_normalization/moving_mean*
validate_shape(*
_output_shapes	
:
ë
save_1/Assign_3Assign,Deep-CNN/batch_normalization/moving_variancesave_1/RestoreV2:3*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*?
_class5
31loc:@Deep-CNN/batch_normalization/moving_variance
Ù
save_1/Assign_4Assign#Deep-CNN/batch_normalization_1/betasave_1/RestoreV2:4*6
_class,
*(loc:@Deep-CNN/batch_normalization_1/beta*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0
Û
save_1/Assign_5Assign$Deep-CNN/batch_normalization_1/gammasave_1/RestoreV2:5*
use_locking(*
T0*7
_class-
+)loc:@Deep-CNN/batch_normalization_1/gamma*
validate_shape(*
_output_shapes	
:
ç
save_1/Assign_6Assign*Deep-CNN/batch_normalization_1/moving_meansave_1/RestoreV2:6*
use_locking(*
T0*=
_class3
1/loc:@Deep-CNN/batch_normalization_1/moving_mean*
validate_shape(*
_output_shapes	
:
ï
save_1/Assign_7Assign.Deep-CNN/batch_normalization_1/moving_variancesave_1/RestoreV2:7*
use_locking(*
T0*A
_class7
53loc:@Deep-CNN/batch_normalization_1/moving_variance*
validate_shape(*
_output_shapes	
:
¹
save_1/Assign_8AssignDeep-CNN/conv1/biassave_1/RestoreV2:8*
T0*&
_class
loc:@Deep-CNN/conv1/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
É
save_1/Assign_9AssignDeep-CNN/conv1/kernelsave_1/RestoreV2:9*(
_class
loc:@Deep-CNN/conv1/kernel*
validate_shape(*'
_output_shapes
:*
use_locking(*
T0
»
save_1/Assign_10AssignDeep-CNN/conv2/biassave_1/RestoreV2:10*
T0*&
_class
loc:@Deep-CNN/conv2/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
Ì
save_1/Assign_11AssignDeep-CNN/conv2/kernelsave_1/RestoreV2:11*
use_locking(*
T0*(
_class
loc:@Deep-CNN/conv2/kernel*
validate_shape(*(
_output_shapes
:
»
save_1/Assign_12AssignDeep-CNN/conv3/biassave_1/RestoreV2:12*
use_locking(*
T0*&
_class
loc:@Deep-CNN/conv3/bias*
validate_shape(*
_output_shapes	
:
Ì
save_1/Assign_13AssignDeep-CNN/conv3/kernelsave_1/RestoreV2:13*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*(
_class
loc:@Deep-CNN/conv3/kernel
»
save_1/Assign_14AssignDeep-CNN/conv4/biassave_1/RestoreV2:14*
use_locking(*
T0*&
_class
loc:@Deep-CNN/conv4/bias*
validate_shape(*
_output_shapes	
:
Ì
save_1/Assign_15AssignDeep-CNN/conv4/kernelsave_1/RestoreV2:15*
T0*(
_class
loc:@Deep-CNN/conv4/kernel*
validate_shape(*(
_output_shapes
:*
use_locking(
»
save_1/Assign_16AssignDeep-CNN/conv5/biassave_1/RestoreV2:16*
use_locking(*
T0*&
_class
loc:@Deep-CNN/conv5/bias*
validate_shape(*
_output_shapes	
:
Ì
save_1/Assign_17AssignDeep-CNN/conv5/kernelsave_1/RestoreV2:17*
use_locking(*
T0*(
_class
loc:@Deep-CNN/conv5/kernel*
validate_shape(*(
_output_shapes
:
»
save_1/Assign_18AssignDeep-CNN/conv6/biassave_1/RestoreV2:18*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*&
_class
loc:@Deep-CNN/conv6/bias
Ì
save_1/Assign_19AssignDeep-CNN/conv6/kernelsave_1/RestoreV2:19*
use_locking(*
T0*(
_class
loc:@Deep-CNN/conv6/kernel*
validate_shape(*(
_output_shapes
:
»
save_1/Assign_20AssignDeep-CNN/conv7/biassave_1/RestoreV2:20*
use_locking(*
T0*&
_class
loc:@Deep-CNN/conv7/bias*
validate_shape(*
_output_shapes	
:
Ì
save_1/Assign_21AssignDeep-CNN/conv7/kernelsave_1/RestoreV2:21*(
_class
loc:@Deep-CNN/conv7/kernel*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0

save_1/Assign_22Assign7Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/biassave_1/RestoreV2:22*
use_locking(*
T0*J
_class@
><loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/bias*
validate_shape(*
_output_shapes	
:

save_1/Assign_23Assign9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernelsave_1/RestoreV2:23*
validate_shape(* 
_output_shapes
:
:*
use_locking(*
T0*L
_classB
@>loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernel

save_1/Assign_24Assign7Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/biassave_1/RestoreV2:24*
_output_shapes	
:*
use_locking(*
T0*J
_class@
><loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/bias*
validate_shape(

save_1/Assign_25Assign9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernelsave_1/RestoreV2:25*
use_locking(*
T0*L
_classB
@>loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
:

save_1/Assign_26Assign7Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/biassave_1/RestoreV2:26*
use_locking(*
T0*J
_class@
><loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/bias*
validate_shape(*
_output_shapes	
:

save_1/Assign_27Assign9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernelsave_1/RestoreV2:27*
use_locking(*
T0*L
_classB
@>loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernel*
validate_shape(* 
_output_shapes
:


save_1/Assign_28Assign7Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/biassave_1/RestoreV2:28*
_output_shapes	
:*
use_locking(*
T0*J
_class@
><loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/bias*
validate_shape(

save_1/Assign_29Assign9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernelsave_1/RestoreV2:29*
use_locking(*
T0*L
_classB
@>loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernel*
validate_shape(* 
_output_shapes
:

¹
save_1/Assign_30AssignLstm-to-logits/Wsave_1/RestoreV2:30*
use_locking(*
T0*#
_class
loc:@Lstm-to-logits/W*
validate_shape(*
_output_shapes
:	Z
´
save_1/Assign_31AssignLstm-to-logits/bsave_1/RestoreV2:31*#
_class
loc:@Lstm-to-logits/b*
validate_shape(*
_output_shapes
:Z*
use_locking(*
T0
î
save_1/restore_allNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_2^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23^save_1/Assign_24^save_1/Assign_25^save_1/Assign_26^save_1/Assign_27^save_1/Assign_28^save_1/Assign_29^save_1/Assign_3^save_1/Assign_30^save_1/Assign_31^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9
[
save_2/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
r
save_2/filenamePlaceholderWithDefaultsave_2/filename/input*
shape: *
dtype0*
_output_shapes
: 
i
save_2/ConstPlaceholderWithDefaultsave_2/filename*
dtype0*
_output_shapes
: *
shape: 
Ò	
save_2/SaveV2/tensor_namesConst*
_output_shapes
: *	
valueùBö B!Deep-CNN/batch_normalization/betaB"Deep-CNN/batch_normalization/gammaB(Deep-CNN/batch_normalization/moving_meanB,Deep-CNN/batch_normalization/moving_varianceB#Deep-CNN/batch_normalization_1/betaB$Deep-CNN/batch_normalization_1/gammaB*Deep-CNN/batch_normalization_1/moving_meanB.Deep-CNN/batch_normalization_1/moving_varianceBDeep-CNN/conv1/biasBDeep-CNN/conv1/kernelBDeep-CNN/conv2/biasBDeep-CNN/conv2/kernelBDeep-CNN/conv3/biasBDeep-CNN/conv3/kernelBDeep-CNN/conv4/biasBDeep-CNN/conv4/kernelBDeep-CNN/conv5/biasBDeep-CNN/conv5/kernelBDeep-CNN/conv6/biasBDeep-CNN/conv6/kernelBDeep-CNN/conv7/biasBDeep-CNN/conv7/kernelB7Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/biasB9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernelB7Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/biasB9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernelB7Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/biasB9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernelB7Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/biasB9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernelBLstm-to-logits/WBLstm-to-logits/b*
dtype0
¥
save_2/SaveV2/shape_and_slicesConst*
_output_shapes
: *S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
ÿ	
save_2/SaveV2SaveV2save_2/Constsave_2/SaveV2/tensor_namessave_2/SaveV2/shape_and_slices!Deep-CNN/batch_normalization/beta"Deep-CNN/batch_normalization/gamma(Deep-CNN/batch_normalization/moving_mean,Deep-CNN/batch_normalization/moving_variance#Deep-CNN/batch_normalization_1/beta$Deep-CNN/batch_normalization_1/gamma*Deep-CNN/batch_normalization_1/moving_mean.Deep-CNN/batch_normalization_1/moving_varianceDeep-CNN/conv1/biasDeep-CNN/conv1/kernelDeep-CNN/conv2/biasDeep-CNN/conv2/kernelDeep-CNN/conv3/biasDeep-CNN/conv3/kernelDeep-CNN/conv4/biasDeep-CNN/conv4/kernelDeep-CNN/conv5/biasDeep-CNN/conv5/kernelDeep-CNN/conv6/biasDeep-CNN/conv6/kernelDeep-CNN/conv7/biasDeep-CNN/conv7/kernel7Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/bias9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernel7Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/bias9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernel7Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/bias9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernel7Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/bias9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernelLstm-to-logits/WLstm-to-logits/b*.
dtypes$
"2 

save_2/control_dependencyIdentitysave_2/Const^save_2/SaveV2*
T0*
_class
loc:@save_2/Const*
_output_shapes
: 
Õ	
save_2/RestoreV2/tensor_namesConst*
_output_shapes
: *	
valueùBö B!Deep-CNN/batch_normalization/betaB"Deep-CNN/batch_normalization/gammaB(Deep-CNN/batch_normalization/moving_meanB,Deep-CNN/batch_normalization/moving_varianceB#Deep-CNN/batch_normalization_1/betaB$Deep-CNN/batch_normalization_1/gammaB*Deep-CNN/batch_normalization_1/moving_meanB.Deep-CNN/batch_normalization_1/moving_varianceBDeep-CNN/conv1/biasBDeep-CNN/conv1/kernelBDeep-CNN/conv2/biasBDeep-CNN/conv2/kernelBDeep-CNN/conv3/biasBDeep-CNN/conv3/kernelBDeep-CNN/conv4/biasBDeep-CNN/conv4/kernelBDeep-CNN/conv5/biasBDeep-CNN/conv5/kernelBDeep-CNN/conv6/biasBDeep-CNN/conv6/kernelBDeep-CNN/conv7/biasBDeep-CNN/conv7/kernelB7Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/biasB9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernelB7Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/biasB9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernelB7Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/biasB9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernelB7Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/biasB9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernelBLstm-to-logits/WBLstm-to-logits/b*
dtype0
¨
!save_2/RestoreV2/shape_and_slicesConst*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
: 
¶
save_2/RestoreV2	RestoreV2save_2/Constsave_2/RestoreV2/tensor_names!save_2/RestoreV2/shape_and_slices*
_output_shapes
::::::::::::::::::::::::::::::::*.
dtypes$
"2 
Ñ
save_2/AssignAssign!Deep-CNN/batch_normalization/betasave_2/RestoreV2*
_output_shapes	
:*
use_locking(*
T0*4
_class*
(&loc:@Deep-CNN/batch_normalization/beta*
validate_shape(
×
save_2/Assign_1Assign"Deep-CNN/batch_normalization/gammasave_2/RestoreV2:1*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*5
_class+
)'loc:@Deep-CNN/batch_normalization/gamma
ã
save_2/Assign_2Assign(Deep-CNN/batch_normalization/moving_meansave_2/RestoreV2:2*
use_locking(*
T0*;
_class1
/-loc:@Deep-CNN/batch_normalization/moving_mean*
validate_shape(*
_output_shapes	
:
ë
save_2/Assign_3Assign,Deep-CNN/batch_normalization/moving_variancesave_2/RestoreV2:3*
use_locking(*
T0*?
_class5
31loc:@Deep-CNN/batch_normalization/moving_variance*
validate_shape(*
_output_shapes	
:
Ù
save_2/Assign_4Assign#Deep-CNN/batch_normalization_1/betasave_2/RestoreV2:4*
use_locking(*
T0*6
_class,
*(loc:@Deep-CNN/batch_normalization_1/beta*
validate_shape(*
_output_shapes	
:
Û
save_2/Assign_5Assign$Deep-CNN/batch_normalization_1/gammasave_2/RestoreV2:5*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*7
_class-
+)loc:@Deep-CNN/batch_normalization_1/gamma
ç
save_2/Assign_6Assign*Deep-CNN/batch_normalization_1/moving_meansave_2/RestoreV2:6*
use_locking(*
T0*=
_class3
1/loc:@Deep-CNN/batch_normalization_1/moving_mean*
validate_shape(*
_output_shapes	
:
ï
save_2/Assign_7Assign.Deep-CNN/batch_normalization_1/moving_variancesave_2/RestoreV2:7*
_output_shapes	
:*
use_locking(*
T0*A
_class7
53loc:@Deep-CNN/batch_normalization_1/moving_variance*
validate_shape(
¹
save_2/Assign_8AssignDeep-CNN/conv1/biassave_2/RestoreV2:8*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*&
_class
loc:@Deep-CNN/conv1/bias
É
save_2/Assign_9AssignDeep-CNN/conv1/kernelsave_2/RestoreV2:9*(
_class
loc:@Deep-CNN/conv1/kernel*
validate_shape(*'
_output_shapes
:*
use_locking(*
T0
»
save_2/Assign_10AssignDeep-CNN/conv2/biassave_2/RestoreV2:10*
use_locking(*
T0*&
_class
loc:@Deep-CNN/conv2/bias*
validate_shape(*
_output_shapes	
:
Ì
save_2/Assign_11AssignDeep-CNN/conv2/kernelsave_2/RestoreV2:11*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*(
_class
loc:@Deep-CNN/conv2/kernel
»
save_2/Assign_12AssignDeep-CNN/conv3/biassave_2/RestoreV2:12*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*&
_class
loc:@Deep-CNN/conv3/bias
Ì
save_2/Assign_13AssignDeep-CNN/conv3/kernelsave_2/RestoreV2:13*
use_locking(*
T0*(
_class
loc:@Deep-CNN/conv3/kernel*
validate_shape(*(
_output_shapes
:
»
save_2/Assign_14AssignDeep-CNN/conv4/biassave_2/RestoreV2:14*
T0*&
_class
loc:@Deep-CNN/conv4/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
Ì
save_2/Assign_15AssignDeep-CNN/conv4/kernelsave_2/RestoreV2:15*
use_locking(*
T0*(
_class
loc:@Deep-CNN/conv4/kernel*
validate_shape(*(
_output_shapes
:
»
save_2/Assign_16AssignDeep-CNN/conv5/biassave_2/RestoreV2:16*
_output_shapes	
:*
use_locking(*
T0*&
_class
loc:@Deep-CNN/conv5/bias*
validate_shape(
Ì
save_2/Assign_17AssignDeep-CNN/conv5/kernelsave_2/RestoreV2:17*
use_locking(*
T0*(
_class
loc:@Deep-CNN/conv5/kernel*
validate_shape(*(
_output_shapes
:
»
save_2/Assign_18AssignDeep-CNN/conv6/biassave_2/RestoreV2:18*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*&
_class
loc:@Deep-CNN/conv6/bias
Ì
save_2/Assign_19AssignDeep-CNN/conv6/kernelsave_2/RestoreV2:19*(
_output_shapes
:*
use_locking(*
T0*(
_class
loc:@Deep-CNN/conv6/kernel*
validate_shape(
»
save_2/Assign_20AssignDeep-CNN/conv7/biassave_2/RestoreV2:20*
use_locking(*
T0*&
_class
loc:@Deep-CNN/conv7/bias*
validate_shape(*
_output_shapes	
:
Ì
save_2/Assign_21AssignDeep-CNN/conv7/kernelsave_2/RestoreV2:21*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*(
_class
loc:@Deep-CNN/conv7/kernel

save_2/Assign_22Assign7Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/biassave_2/RestoreV2:22*
use_locking(*
T0*J
_class@
><loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/bias*
validate_shape(*
_output_shapes	
:

save_2/Assign_23Assign9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernelsave_2/RestoreV2:23* 
_output_shapes
:
:*
use_locking(*
T0*L
_classB
@>loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernel*
validate_shape(

save_2/Assign_24Assign7Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/biassave_2/RestoreV2:24*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*J
_class@
><loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/bias

save_2/Assign_25Assign9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernelsave_2/RestoreV2:25*
use_locking(*
T0*L
_classB
@>loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
:

save_2/Assign_26Assign7Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/biassave_2/RestoreV2:26*J
_class@
><loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/bias*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0

save_2/Assign_27Assign9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernelsave_2/RestoreV2:27*
use_locking(*
T0*L
_classB
@>loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernel*
validate_shape(* 
_output_shapes
:


save_2/Assign_28Assign7Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/biassave_2/RestoreV2:28*
_output_shapes	
:*
use_locking(*
T0*J
_class@
><loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/bias*
validate_shape(

save_2/Assign_29Assign9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernelsave_2/RestoreV2:29*L
_classB
@>loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0
¹
save_2/Assign_30AssignLstm-to-logits/Wsave_2/RestoreV2:30*
use_locking(*
T0*#
_class
loc:@Lstm-to-logits/W*
validate_shape(*
_output_shapes
:	Z
´
save_2/Assign_31AssignLstm-to-logits/bsave_2/RestoreV2:31*
use_locking(*
T0*#
_class
loc:@Lstm-to-logits/b*
validate_shape(*
_output_shapes
:Z
î
save_2/restore_allNoOp^save_2/Assign^save_2/Assign_1^save_2/Assign_10^save_2/Assign_11^save_2/Assign_12^save_2/Assign_13^save_2/Assign_14^save_2/Assign_15^save_2/Assign_16^save_2/Assign_17^save_2/Assign_18^save_2/Assign_19^save_2/Assign_2^save_2/Assign_20^save_2/Assign_21^save_2/Assign_22^save_2/Assign_23^save_2/Assign_24^save_2/Assign_25^save_2/Assign_26^save_2/Assign_27^save_2/Assign_28^save_2/Assign_29^save_2/Assign_3^save_2/Assign_30^save_2/Assign_31^save_2/Assign_4^save_2/Assign_5^save_2/Assign_6^save_2/Assign_7^save_2/Assign_8^save_2/Assign_9
[
save_3/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
r
save_3/filenamePlaceholderWithDefaultsave_3/filename/input*
shape: *
dtype0*
_output_shapes
: 
i
save_3/ConstPlaceholderWithDefaultsave_3/filename*
dtype0*
_output_shapes
: *
shape: 
Ò	
save_3/SaveV2/tensor_namesConst*	
valueùBö B!Deep-CNN/batch_normalization/betaB"Deep-CNN/batch_normalization/gammaB(Deep-CNN/batch_normalization/moving_meanB,Deep-CNN/batch_normalization/moving_varianceB#Deep-CNN/batch_normalization_1/betaB$Deep-CNN/batch_normalization_1/gammaB*Deep-CNN/batch_normalization_1/moving_meanB.Deep-CNN/batch_normalization_1/moving_varianceBDeep-CNN/conv1/biasBDeep-CNN/conv1/kernelBDeep-CNN/conv2/biasBDeep-CNN/conv2/kernelBDeep-CNN/conv3/biasBDeep-CNN/conv3/kernelBDeep-CNN/conv4/biasBDeep-CNN/conv4/kernelBDeep-CNN/conv5/biasBDeep-CNN/conv5/kernelBDeep-CNN/conv6/biasBDeep-CNN/conv6/kernelBDeep-CNN/conv7/biasBDeep-CNN/conv7/kernelB7Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/biasB9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernelB7Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/biasB9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernelB7Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/biasB9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernelB7Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/biasB9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernelBLstm-to-logits/WBLstm-to-logits/b*
dtype0*
_output_shapes
: 
¥
save_3/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
: *S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
ÿ	
save_3/SaveV2SaveV2save_3/Constsave_3/SaveV2/tensor_namessave_3/SaveV2/shape_and_slices!Deep-CNN/batch_normalization/beta"Deep-CNN/batch_normalization/gamma(Deep-CNN/batch_normalization/moving_mean,Deep-CNN/batch_normalization/moving_variance#Deep-CNN/batch_normalization_1/beta$Deep-CNN/batch_normalization_1/gamma*Deep-CNN/batch_normalization_1/moving_mean.Deep-CNN/batch_normalization_1/moving_varianceDeep-CNN/conv1/biasDeep-CNN/conv1/kernelDeep-CNN/conv2/biasDeep-CNN/conv2/kernelDeep-CNN/conv3/biasDeep-CNN/conv3/kernelDeep-CNN/conv4/biasDeep-CNN/conv4/kernelDeep-CNN/conv5/biasDeep-CNN/conv5/kernelDeep-CNN/conv6/biasDeep-CNN/conv6/kernelDeep-CNN/conv7/biasDeep-CNN/conv7/kernel7Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/bias9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernel7Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/bias9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernel7Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/bias9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernel7Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/bias9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernelLstm-to-logits/WLstm-to-logits/b*.
dtypes$
"2 

save_3/control_dependencyIdentitysave_3/Const^save_3/SaveV2*
_class
loc:@save_3/Const*
_output_shapes
: *
T0
Õ	
save_3/RestoreV2/tensor_namesConst*	
valueùBö B!Deep-CNN/batch_normalization/betaB"Deep-CNN/batch_normalization/gammaB(Deep-CNN/batch_normalization/moving_meanB,Deep-CNN/batch_normalization/moving_varianceB#Deep-CNN/batch_normalization_1/betaB$Deep-CNN/batch_normalization_1/gammaB*Deep-CNN/batch_normalization_1/moving_meanB.Deep-CNN/batch_normalization_1/moving_varianceBDeep-CNN/conv1/biasBDeep-CNN/conv1/kernelBDeep-CNN/conv2/biasBDeep-CNN/conv2/kernelBDeep-CNN/conv3/biasBDeep-CNN/conv3/kernelBDeep-CNN/conv4/biasBDeep-CNN/conv4/kernelBDeep-CNN/conv5/biasBDeep-CNN/conv5/kernelBDeep-CNN/conv6/biasBDeep-CNN/conv6/kernelBDeep-CNN/conv7/biasBDeep-CNN/conv7/kernelB7Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/biasB9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernelB7Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/biasB9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernelB7Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/biasB9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernelB7Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/biasB9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernelBLstm-to-logits/WBLstm-to-logits/b*
dtype0*
_output_shapes
: 
¨
!save_3/RestoreV2/shape_and_slicesConst*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
: 
¶
save_3/RestoreV2	RestoreV2save_3/Constsave_3/RestoreV2/tensor_names!save_3/RestoreV2/shape_and_slices*
_output_shapes
::::::::::::::::::::::::::::::::*.
dtypes$
"2 
Ñ
save_3/AssignAssign!Deep-CNN/batch_normalization/betasave_3/RestoreV2*
use_locking(*
T0*4
_class*
(&loc:@Deep-CNN/batch_normalization/beta*
validate_shape(*
_output_shapes	
:
×
save_3/Assign_1Assign"Deep-CNN/batch_normalization/gammasave_3/RestoreV2:1*
use_locking(*
T0*5
_class+
)'loc:@Deep-CNN/batch_normalization/gamma*
validate_shape(*
_output_shapes	
:
ã
save_3/Assign_2Assign(Deep-CNN/batch_normalization/moving_meansave_3/RestoreV2:2*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*;
_class1
/-loc:@Deep-CNN/batch_normalization/moving_mean
ë
save_3/Assign_3Assign,Deep-CNN/batch_normalization/moving_variancesave_3/RestoreV2:3*
T0*?
_class5
31loc:@Deep-CNN/batch_normalization/moving_variance*
validate_shape(*
_output_shapes	
:*
use_locking(
Ù
save_3/Assign_4Assign#Deep-CNN/batch_normalization_1/betasave_3/RestoreV2:4*
use_locking(*
T0*6
_class,
*(loc:@Deep-CNN/batch_normalization_1/beta*
validate_shape(*
_output_shapes	
:
Û
save_3/Assign_5Assign$Deep-CNN/batch_normalization_1/gammasave_3/RestoreV2:5*
use_locking(*
T0*7
_class-
+)loc:@Deep-CNN/batch_normalization_1/gamma*
validate_shape(*
_output_shapes	
:
ç
save_3/Assign_6Assign*Deep-CNN/batch_normalization_1/moving_meansave_3/RestoreV2:6*
T0*=
_class3
1/loc:@Deep-CNN/batch_normalization_1/moving_mean*
validate_shape(*
_output_shapes	
:*
use_locking(
ï
save_3/Assign_7Assign.Deep-CNN/batch_normalization_1/moving_variancesave_3/RestoreV2:7*
_output_shapes	
:*
use_locking(*
T0*A
_class7
53loc:@Deep-CNN/batch_normalization_1/moving_variance*
validate_shape(
¹
save_3/Assign_8AssignDeep-CNN/conv1/biassave_3/RestoreV2:8*
_output_shapes	
:*
use_locking(*
T0*&
_class
loc:@Deep-CNN/conv1/bias*
validate_shape(
É
save_3/Assign_9AssignDeep-CNN/conv1/kernelsave_3/RestoreV2:9*(
_class
loc:@Deep-CNN/conv1/kernel*
validate_shape(*'
_output_shapes
:*
use_locking(*
T0
»
save_3/Assign_10AssignDeep-CNN/conv2/biassave_3/RestoreV2:10*
use_locking(*
T0*&
_class
loc:@Deep-CNN/conv2/bias*
validate_shape(*
_output_shapes	
:
Ì
save_3/Assign_11AssignDeep-CNN/conv2/kernelsave_3/RestoreV2:11*(
_output_shapes
:*
use_locking(*
T0*(
_class
loc:@Deep-CNN/conv2/kernel*
validate_shape(
»
save_3/Assign_12AssignDeep-CNN/conv3/biassave_3/RestoreV2:12*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*&
_class
loc:@Deep-CNN/conv3/bias
Ì
save_3/Assign_13AssignDeep-CNN/conv3/kernelsave_3/RestoreV2:13*
use_locking(*
T0*(
_class
loc:@Deep-CNN/conv3/kernel*
validate_shape(*(
_output_shapes
:
»
save_3/Assign_14AssignDeep-CNN/conv4/biassave_3/RestoreV2:14*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*&
_class
loc:@Deep-CNN/conv4/bias
Ì
save_3/Assign_15AssignDeep-CNN/conv4/kernelsave_3/RestoreV2:15*(
_output_shapes
:*
use_locking(*
T0*(
_class
loc:@Deep-CNN/conv4/kernel*
validate_shape(
»
save_3/Assign_16AssignDeep-CNN/conv5/biassave_3/RestoreV2:16*
use_locking(*
T0*&
_class
loc:@Deep-CNN/conv5/bias*
validate_shape(*
_output_shapes	
:
Ì
save_3/Assign_17AssignDeep-CNN/conv5/kernelsave_3/RestoreV2:17*
use_locking(*
T0*(
_class
loc:@Deep-CNN/conv5/kernel*
validate_shape(*(
_output_shapes
:
»
save_3/Assign_18AssignDeep-CNN/conv6/biassave_3/RestoreV2:18*
use_locking(*
T0*&
_class
loc:@Deep-CNN/conv6/bias*
validate_shape(*
_output_shapes	
:
Ì
save_3/Assign_19AssignDeep-CNN/conv6/kernelsave_3/RestoreV2:19*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*(
_class
loc:@Deep-CNN/conv6/kernel
»
save_3/Assign_20AssignDeep-CNN/conv7/biassave_3/RestoreV2:20*
T0*&
_class
loc:@Deep-CNN/conv7/bias*
validate_shape(*
_output_shapes	
:*
use_locking(
Ì
save_3/Assign_21AssignDeep-CNN/conv7/kernelsave_3/RestoreV2:21*(
_output_shapes
:*
use_locking(*
T0*(
_class
loc:@Deep-CNN/conv7/kernel*
validate_shape(

save_3/Assign_22Assign7Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/biassave_3/RestoreV2:22*
use_locking(*
T0*J
_class@
><loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/bias*
validate_shape(*
_output_shapes	
:

save_3/Assign_23Assign9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernelsave_3/RestoreV2:23*
use_locking(*
T0*L
_classB
@>loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
:

save_3/Assign_24Assign7Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/biassave_3/RestoreV2:24*
use_locking(*
T0*J
_class@
><loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/bias*
validate_shape(*
_output_shapes	
:

save_3/Assign_25Assign9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernelsave_3/RestoreV2:25*L
_classB
@>loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
:*
use_locking(*
T0

save_3/Assign_26Assign7Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/biassave_3/RestoreV2:26*
_output_shapes	
:*
use_locking(*
T0*J
_class@
><loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/bias*
validate_shape(

save_3/Assign_27Assign9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernelsave_3/RestoreV2:27*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*L
_classB
@>loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernel

save_3/Assign_28Assign7Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/biassave_3/RestoreV2:28*
use_locking(*
T0*J
_class@
><loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/bias*
validate_shape(*
_output_shapes	
:

save_3/Assign_29Assign9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernelsave_3/RestoreV2:29*
validate_shape(* 
_output_shapes
:
*
use_locking(*
T0*L
_classB
@>loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernel
¹
save_3/Assign_30AssignLstm-to-logits/Wsave_3/RestoreV2:30*
use_locking(*
T0*#
_class
loc:@Lstm-to-logits/W*
validate_shape(*
_output_shapes
:	Z
´
save_3/Assign_31AssignLstm-to-logits/bsave_3/RestoreV2:31*
use_locking(*
T0*#
_class
loc:@Lstm-to-logits/b*
validate_shape(*
_output_shapes
:Z
î
save_3/restore_allNoOp^save_3/Assign^save_3/Assign_1^save_3/Assign_10^save_3/Assign_11^save_3/Assign_12^save_3/Assign_13^save_3/Assign_14^save_3/Assign_15^save_3/Assign_16^save_3/Assign_17^save_3/Assign_18^save_3/Assign_19^save_3/Assign_2^save_3/Assign_20^save_3/Assign_21^save_3/Assign_22^save_3/Assign_23^save_3/Assign_24^save_3/Assign_25^save_3/Assign_26^save_3/Assign_27^save_3/Assign_28^save_3/Assign_29^save_3/Assign_3^save_3/Assign_30^save_3/Assign_31^save_3/Assign_4^save_3/Assign_5^save_3/Assign_6^save_3/Assign_7^save_3/Assign_8^save_3/Assign_9
[
save_4/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
r
save_4/filenamePlaceholderWithDefaultsave_4/filename/input*
dtype0*
_output_shapes
: *
shape: 
i
save_4/ConstPlaceholderWithDefaultsave_4/filename*
dtype0*
_output_shapes
: *
shape: 

save_4/StringJoin/inputs_1Const*<
value3B1 B+_temp_253e9ae63138438aa619654a5f507661/part*
dtype0*
_output_shapes
: 
{
save_4/StringJoin
StringJoinsave_4/Constsave_4/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
S
save_4/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
^
save_4/ShardedFilename/shardConst*
value	B : *
dtype0*
_output_shapes
: 

save_4/ShardedFilenameShardedFilenamesave_4/StringJoinsave_4/ShardedFilename/shardsave_4/num_shards*
_output_shapes
: 
Ò	
save_4/SaveV2/tensor_namesConst*	
valueùBö B!Deep-CNN/batch_normalization/betaB"Deep-CNN/batch_normalization/gammaB(Deep-CNN/batch_normalization/moving_meanB,Deep-CNN/batch_normalization/moving_varianceB#Deep-CNN/batch_normalization_1/betaB$Deep-CNN/batch_normalization_1/gammaB*Deep-CNN/batch_normalization_1/moving_meanB.Deep-CNN/batch_normalization_1/moving_varianceBDeep-CNN/conv1/biasBDeep-CNN/conv1/kernelBDeep-CNN/conv2/biasBDeep-CNN/conv2/kernelBDeep-CNN/conv3/biasBDeep-CNN/conv3/kernelBDeep-CNN/conv4/biasBDeep-CNN/conv4/kernelBDeep-CNN/conv5/biasBDeep-CNN/conv5/kernelBDeep-CNN/conv6/biasBDeep-CNN/conv6/kernelBDeep-CNN/conv7/biasBDeep-CNN/conv7/kernelB7Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/biasB9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernelB7Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/biasB9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernelB7Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/biasB9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernelB7Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/biasB9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernelBLstm-to-logits/WBLstm-to-logits/b*
dtype0*
_output_shapes
: 
¥
save_4/SaveV2/shape_and_slicesConst*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
: 


save_4/SaveV2SaveV2save_4/ShardedFilenamesave_4/SaveV2/tensor_namessave_4/SaveV2/shape_and_slices!Deep-CNN/batch_normalization/beta"Deep-CNN/batch_normalization/gamma(Deep-CNN/batch_normalization/moving_mean,Deep-CNN/batch_normalization/moving_variance#Deep-CNN/batch_normalization_1/beta$Deep-CNN/batch_normalization_1/gamma*Deep-CNN/batch_normalization_1/moving_mean.Deep-CNN/batch_normalization_1/moving_varianceDeep-CNN/conv1/biasDeep-CNN/conv1/kernelDeep-CNN/conv2/biasDeep-CNN/conv2/kernelDeep-CNN/conv3/biasDeep-CNN/conv3/kernelDeep-CNN/conv4/biasDeep-CNN/conv4/kernelDeep-CNN/conv5/biasDeep-CNN/conv5/kernelDeep-CNN/conv6/biasDeep-CNN/conv6/kernelDeep-CNN/conv7/biasDeep-CNN/conv7/kernel7Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/bias9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernel7Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/bias9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernel7Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/bias9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernel7Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/bias9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernelLstm-to-logits/WLstm-to-logits/b*.
dtypes$
"2 

save_4/control_dependencyIdentitysave_4/ShardedFilename^save_4/SaveV2*
T0*)
_class
loc:@save_4/ShardedFilename*
_output_shapes
: 
£
-save_4/MergeV2Checkpoints/checkpoint_prefixesPacksave_4/ShardedFilename^save_4/control_dependency*
T0*

axis *
N*
_output_shapes
:

save_4/MergeV2CheckpointsMergeV2Checkpoints-save_4/MergeV2Checkpoints/checkpoint_prefixessave_4/Const*
delete_old_dirs(

save_4/IdentityIdentitysave_4/Const^save_4/MergeV2Checkpoints^save_4/control_dependency*
T0*
_output_shapes
: 
Õ	
save_4/RestoreV2/tensor_namesConst*	
valueùBö B!Deep-CNN/batch_normalization/betaB"Deep-CNN/batch_normalization/gammaB(Deep-CNN/batch_normalization/moving_meanB,Deep-CNN/batch_normalization/moving_varianceB#Deep-CNN/batch_normalization_1/betaB$Deep-CNN/batch_normalization_1/gammaB*Deep-CNN/batch_normalization_1/moving_meanB.Deep-CNN/batch_normalization_1/moving_varianceBDeep-CNN/conv1/biasBDeep-CNN/conv1/kernelBDeep-CNN/conv2/biasBDeep-CNN/conv2/kernelBDeep-CNN/conv3/biasBDeep-CNN/conv3/kernelBDeep-CNN/conv4/biasBDeep-CNN/conv4/kernelBDeep-CNN/conv5/biasBDeep-CNN/conv5/kernelBDeep-CNN/conv6/biasBDeep-CNN/conv6/kernelBDeep-CNN/conv7/biasBDeep-CNN/conv7/kernelB7Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/biasB9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernelB7Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/biasB9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernelB7Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/biasB9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernelB7Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/biasB9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernelBLstm-to-logits/WBLstm-to-logits/b*
dtype0*
_output_shapes
: 
¨
!save_4/RestoreV2/shape_and_slicesConst*
_output_shapes
: *S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
¶
save_4/RestoreV2	RestoreV2save_4/Constsave_4/RestoreV2/tensor_names!save_4/RestoreV2/shape_and_slices*
_output_shapes
::::::::::::::::::::::::::::::::*.
dtypes$
"2 
Ñ
save_4/AssignAssign!Deep-CNN/batch_normalization/betasave_4/RestoreV2*
use_locking(*
T0*4
_class*
(&loc:@Deep-CNN/batch_normalization/beta*
validate_shape(*
_output_shapes	
:
×
save_4/Assign_1Assign"Deep-CNN/batch_normalization/gammasave_4/RestoreV2:1*
use_locking(*
T0*5
_class+
)'loc:@Deep-CNN/batch_normalization/gamma*
validate_shape(*
_output_shapes	
:
ã
save_4/Assign_2Assign(Deep-CNN/batch_normalization/moving_meansave_4/RestoreV2:2*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*;
_class1
/-loc:@Deep-CNN/batch_normalization/moving_mean
ë
save_4/Assign_3Assign,Deep-CNN/batch_normalization/moving_variancesave_4/RestoreV2:3*
use_locking(*
T0*?
_class5
31loc:@Deep-CNN/batch_normalization/moving_variance*
validate_shape(*
_output_shapes	
:
Ù
save_4/Assign_4Assign#Deep-CNN/batch_normalization_1/betasave_4/RestoreV2:4*
validate_shape(*
_output_shapes	
:*
use_locking(*
T0*6
_class,
*(loc:@Deep-CNN/batch_normalization_1/beta
Û
save_4/Assign_5Assign$Deep-CNN/batch_normalization_1/gammasave_4/RestoreV2:5*
use_locking(*
T0*7
_class-
+)loc:@Deep-CNN/batch_normalization_1/gamma*
validate_shape(*
_output_shapes	
:
ç
save_4/Assign_6Assign*Deep-CNN/batch_normalization_1/moving_meansave_4/RestoreV2:6*
use_locking(*
T0*=
_class3
1/loc:@Deep-CNN/batch_normalization_1/moving_mean*
validate_shape(*
_output_shapes	
:
ï
save_4/Assign_7Assign.Deep-CNN/batch_normalization_1/moving_variancesave_4/RestoreV2:7*
use_locking(*
T0*A
_class7
53loc:@Deep-CNN/batch_normalization_1/moving_variance*
validate_shape(*
_output_shapes	
:
¹
save_4/Assign_8AssignDeep-CNN/conv1/biassave_4/RestoreV2:8*
_output_shapes	
:*
use_locking(*
T0*&
_class
loc:@Deep-CNN/conv1/bias*
validate_shape(
É
save_4/Assign_9AssignDeep-CNN/conv1/kernelsave_4/RestoreV2:9*
T0*(
_class
loc:@Deep-CNN/conv1/kernel*
validate_shape(*'
_output_shapes
:*
use_locking(
»
save_4/Assign_10AssignDeep-CNN/conv2/biassave_4/RestoreV2:10*
use_locking(*
T0*&
_class
loc:@Deep-CNN/conv2/bias*
validate_shape(*
_output_shapes	
:
Ì
save_4/Assign_11AssignDeep-CNN/conv2/kernelsave_4/RestoreV2:11*
use_locking(*
T0*(
_class
loc:@Deep-CNN/conv2/kernel*
validate_shape(*(
_output_shapes
:
»
save_4/Assign_12AssignDeep-CNN/conv3/biassave_4/RestoreV2:12*
_output_shapes	
:*
use_locking(*
T0*&
_class
loc:@Deep-CNN/conv3/bias*
validate_shape(
Ì
save_4/Assign_13AssignDeep-CNN/conv3/kernelsave_4/RestoreV2:13*
use_locking(*
T0*(
_class
loc:@Deep-CNN/conv3/kernel*
validate_shape(*(
_output_shapes
:
»
save_4/Assign_14AssignDeep-CNN/conv4/biassave_4/RestoreV2:14*
_output_shapes	
:*
use_locking(*
T0*&
_class
loc:@Deep-CNN/conv4/bias*
validate_shape(
Ì
save_4/Assign_15AssignDeep-CNN/conv4/kernelsave_4/RestoreV2:15*
use_locking(*
T0*(
_class
loc:@Deep-CNN/conv4/kernel*
validate_shape(*(
_output_shapes
:
»
save_4/Assign_16AssignDeep-CNN/conv5/biassave_4/RestoreV2:16*
use_locking(*
T0*&
_class
loc:@Deep-CNN/conv5/bias*
validate_shape(*
_output_shapes	
:
Ì
save_4/Assign_17AssignDeep-CNN/conv5/kernelsave_4/RestoreV2:17*
use_locking(*
T0*(
_class
loc:@Deep-CNN/conv5/kernel*
validate_shape(*(
_output_shapes
:
»
save_4/Assign_18AssignDeep-CNN/conv6/biassave_4/RestoreV2:18*
use_locking(*
T0*&
_class
loc:@Deep-CNN/conv6/bias*
validate_shape(*
_output_shapes	
:
Ì
save_4/Assign_19AssignDeep-CNN/conv6/kernelsave_4/RestoreV2:19*(
_output_shapes
:*
use_locking(*
T0*(
_class
loc:@Deep-CNN/conv6/kernel*
validate_shape(
»
save_4/Assign_20AssignDeep-CNN/conv7/biassave_4/RestoreV2:20*
use_locking(*
T0*&
_class
loc:@Deep-CNN/conv7/bias*
validate_shape(*
_output_shapes	
:
Ì
save_4/Assign_21AssignDeep-CNN/conv7/kernelsave_4/RestoreV2:21*
validate_shape(*(
_output_shapes
:*
use_locking(*
T0*(
_class
loc:@Deep-CNN/conv7/kernel

save_4/Assign_22Assign7Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/biassave_4/RestoreV2:22*
use_locking(*
T0*J
_class@
><loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/bias*
validate_shape(*
_output_shapes	
:

save_4/Assign_23Assign9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernelsave_4/RestoreV2:23*L
_classB
@>loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernel*
validate_shape(* 
_output_shapes
:
:*
use_locking(*
T0

save_4/Assign_24Assign7Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/biassave_4/RestoreV2:24*
use_locking(*
T0*J
_class@
><loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/bias*
validate_shape(*
_output_shapes	
:

save_4/Assign_25Assign9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernelsave_4/RestoreV2:25*
validate_shape(* 
_output_shapes
:
:*
use_locking(*
T0*L
_classB
@>loc:@Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernel

save_4/Assign_26Assign7Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/biassave_4/RestoreV2:26*
_output_shapes	
:*
use_locking(*
T0*J
_class@
><loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/bias*
validate_shape(

save_4/Assign_27Assign9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernelsave_4/RestoreV2:27*
use_locking(*
T0*L
_classB
@>loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernel*
validate_shape(* 
_output_shapes
:


save_4/Assign_28Assign7Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/biassave_4/RestoreV2:28*
use_locking(*
T0*J
_class@
><loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/bias*
validate_shape(*
_output_shapes	
:

save_4/Assign_29Assign9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernelsave_4/RestoreV2:29*
use_locking(*
T0*L
_classB
@>loc:@Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernel*
validate_shape(* 
_output_shapes
:

¹
save_4/Assign_30AssignLstm-to-logits/Wsave_4/RestoreV2:30*
use_locking(*
T0*#
_class
loc:@Lstm-to-logits/W*
validate_shape(*
_output_shapes
:	Z
´
save_4/Assign_31AssignLstm-to-logits/bsave_4/RestoreV2:31*
T0*#
_class
loc:@Lstm-to-logits/b*
validate_shape(*
_output_shapes
:Z*
use_locking(
ð
save_4/restore_shardNoOp^save_4/Assign^save_4/Assign_1^save_4/Assign_10^save_4/Assign_11^save_4/Assign_12^save_4/Assign_13^save_4/Assign_14^save_4/Assign_15^save_4/Assign_16^save_4/Assign_17^save_4/Assign_18^save_4/Assign_19^save_4/Assign_2^save_4/Assign_20^save_4/Assign_21^save_4/Assign_22^save_4/Assign_23^save_4/Assign_24^save_4/Assign_25^save_4/Assign_26^save_4/Assign_27^save_4/Assign_28^save_4/Assign_29^save_4/Assign_3^save_4/Assign_30^save_4/Assign_31^save_4/Assign_4^save_4/Assign_5^save_4/Assign_6^save_4/Assign_7^save_4/Assign_8^save_4/Assign_9
1
save_4/restore_allNoOp^save_4/restore_shard "&B
save_4/Const:0save_4/Identity:0save_4/restore_all (5 @F8"Æ'
trainable_variables®'«'

Deep-CNN/conv1/kernel:0Deep-CNN/conv1/kernel/AssignDeep-CNN/conv1/kernel/read:022Deep-CNN/conv1/kernel/Initializer/random_uniform:08
z
Deep-CNN/conv1/bias:0Deep-CNN/conv1/bias/AssignDeep-CNN/conv1/bias/read:02'Deep-CNN/conv1/bias/Initializer/zeros:08

Deep-CNN/conv2/kernel:0Deep-CNN/conv2/kernel/AssignDeep-CNN/conv2/kernel/read:022Deep-CNN/conv2/kernel/Initializer/random_uniform:08
z
Deep-CNN/conv2/bias:0Deep-CNN/conv2/bias/AssignDeep-CNN/conv2/bias/read:02'Deep-CNN/conv2/bias/Initializer/zeros:08

Deep-CNN/conv3/kernel:0Deep-CNN/conv3/kernel/AssignDeep-CNN/conv3/kernel/read:022Deep-CNN/conv3/kernel/Initializer/random_uniform:08
z
Deep-CNN/conv3/bias:0Deep-CNN/conv3/bias/AssignDeep-CNN/conv3/bias/read:02'Deep-CNN/conv3/bias/Initializer/zeros:08

Deep-CNN/conv4/kernel:0Deep-CNN/conv4/kernel/AssignDeep-CNN/conv4/kernel/read:022Deep-CNN/conv4/kernel/Initializer/random_uniform:08
z
Deep-CNN/conv4/bias:0Deep-CNN/conv4/bias/AssignDeep-CNN/conv4/bias/read:02'Deep-CNN/conv4/bias/Initializer/zeros:08

Deep-CNN/conv5/kernel:0Deep-CNN/conv5/kernel/AssignDeep-CNN/conv5/kernel/read:022Deep-CNN/conv5/kernel/Initializer/random_uniform:08
z
Deep-CNN/conv5/bias:0Deep-CNN/conv5/bias/AssignDeep-CNN/conv5/bias/read:02'Deep-CNN/conv5/bias/Initializer/zeros:08
µ
$Deep-CNN/batch_normalization/gamma:0)Deep-CNN/batch_normalization/gamma/Assign)Deep-CNN/batch_normalization/gamma/read:025Deep-CNN/batch_normalization/gamma/Initializer/ones:08
²
#Deep-CNN/batch_normalization/beta:0(Deep-CNN/batch_normalization/beta/Assign(Deep-CNN/batch_normalization/beta/read:025Deep-CNN/batch_normalization/beta/Initializer/zeros:08

Deep-CNN/conv6/kernel:0Deep-CNN/conv6/kernel/AssignDeep-CNN/conv6/kernel/read:022Deep-CNN/conv6/kernel/Initializer/random_uniform:08
z
Deep-CNN/conv6/bias:0Deep-CNN/conv6/bias/AssignDeep-CNN/conv6/bias/read:02'Deep-CNN/conv6/bias/Initializer/zeros:08
½
&Deep-CNN/batch_normalization_1/gamma:0+Deep-CNN/batch_normalization_1/gamma/Assign+Deep-CNN/batch_normalization_1/gamma/read:027Deep-CNN/batch_normalization_1/gamma/Initializer/ones:08
º
%Deep-CNN/batch_normalization_1/beta:0*Deep-CNN/batch_normalization_1/beta/Assign*Deep-CNN/batch_normalization_1/beta/read:027Deep-CNN/batch_normalization_1/beta/Initializer/zeros:08

Deep-CNN/conv7/kernel:0Deep-CNN/conv7/kernel/AssignDeep-CNN/conv7/kernel/read:022Deep-CNN/conv7/kernel/Initializer/random_uniform:08
z
Deep-CNN/conv7/bias:0Deep-CNN/conv7/bias/AssignDeep-CNN/conv7/bias/read:02'Deep-CNN/conv7/bias/Initializer/zeros:08

;Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernel:0@Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernel/Assign@Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernel/read:02VDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform:08

9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/bias:0>Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/bias/Assign>Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/bias/read:02KDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/bias/Initializer/zeros:08

;Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernel:0@Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernel/Assign@Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernel/read:02VDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform:08

9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/bias:0>Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/bias/Assign>Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/bias/read:02KDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/bias/Initializer/zeros:08

;Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernel:0@Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernel/Assign@Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernel/read:02VDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform:08

9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/bias:0>Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/bias/Assign>Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/bias/read:02KDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/bias/Initializer/zeros:08

;Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernel:0@Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernel/Assign@Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernel/read:02VDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform:08

9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/bias:0>Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/bias/Assign>Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/bias/read:02KDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/bias/Initializer/zeros:08
k
Lstm-to-logits/W:0Lstm-to-logits/W/AssignLstm-to-logits/W/read:02!Lstm-to-logits/truncated_normal:08
`
Lstm-to-logits/b:0Lstm-to-logits/b/AssignLstm-to-logits/b/read:02Lstm-to-logits/Const:08"¦
	summaries

Deep-CNN/Conv-1-weights:0
Deep-CNN/Conv-1-biases:0
Deep-CNN/Conv-7-weights:0
Deep-CNN/Conv-7-biases:0
Deep-LSTM/LSTM1-weights:0
Deep-LSTM/LSTM1-Biases:0
Deep-LSTM/LSTM2-weights:0
Deep-LSTM/LSTM2-Biases:0
Lstm-to-logits/Logits-weights:0
Lstm-to-logits/Logits-Biases:0"¶.
	variables¨.¥.

Deep-CNN/conv1/kernel:0Deep-CNN/conv1/kernel/AssignDeep-CNN/conv1/kernel/read:022Deep-CNN/conv1/kernel/Initializer/random_uniform:08
z
Deep-CNN/conv1/bias:0Deep-CNN/conv1/bias/AssignDeep-CNN/conv1/bias/read:02'Deep-CNN/conv1/bias/Initializer/zeros:08

Deep-CNN/conv2/kernel:0Deep-CNN/conv2/kernel/AssignDeep-CNN/conv2/kernel/read:022Deep-CNN/conv2/kernel/Initializer/random_uniform:08
z
Deep-CNN/conv2/bias:0Deep-CNN/conv2/bias/AssignDeep-CNN/conv2/bias/read:02'Deep-CNN/conv2/bias/Initializer/zeros:08

Deep-CNN/conv3/kernel:0Deep-CNN/conv3/kernel/AssignDeep-CNN/conv3/kernel/read:022Deep-CNN/conv3/kernel/Initializer/random_uniform:08
z
Deep-CNN/conv3/bias:0Deep-CNN/conv3/bias/AssignDeep-CNN/conv3/bias/read:02'Deep-CNN/conv3/bias/Initializer/zeros:08

Deep-CNN/conv4/kernel:0Deep-CNN/conv4/kernel/AssignDeep-CNN/conv4/kernel/read:022Deep-CNN/conv4/kernel/Initializer/random_uniform:08
z
Deep-CNN/conv4/bias:0Deep-CNN/conv4/bias/AssignDeep-CNN/conv4/bias/read:02'Deep-CNN/conv4/bias/Initializer/zeros:08

Deep-CNN/conv5/kernel:0Deep-CNN/conv5/kernel/AssignDeep-CNN/conv5/kernel/read:022Deep-CNN/conv5/kernel/Initializer/random_uniform:08
z
Deep-CNN/conv5/bias:0Deep-CNN/conv5/bias/AssignDeep-CNN/conv5/bias/read:02'Deep-CNN/conv5/bias/Initializer/zeros:08
µ
$Deep-CNN/batch_normalization/gamma:0)Deep-CNN/batch_normalization/gamma/Assign)Deep-CNN/batch_normalization/gamma/read:025Deep-CNN/batch_normalization/gamma/Initializer/ones:08
²
#Deep-CNN/batch_normalization/beta:0(Deep-CNN/batch_normalization/beta/Assign(Deep-CNN/batch_normalization/beta/read:025Deep-CNN/batch_normalization/beta/Initializer/zeros:08
Ð
*Deep-CNN/batch_normalization/moving_mean:0/Deep-CNN/batch_normalization/moving_mean/Assign/Deep-CNN/batch_normalization/moving_mean/read:02<Deep-CNN/batch_normalization/moving_mean/Initializer/zeros:0@H
ß
.Deep-CNN/batch_normalization/moving_variance:03Deep-CNN/batch_normalization/moving_variance/Assign3Deep-CNN/batch_normalization/moving_variance/read:02?Deep-CNN/batch_normalization/moving_variance/Initializer/ones:0@H

Deep-CNN/conv6/kernel:0Deep-CNN/conv6/kernel/AssignDeep-CNN/conv6/kernel/read:022Deep-CNN/conv6/kernel/Initializer/random_uniform:08
z
Deep-CNN/conv6/bias:0Deep-CNN/conv6/bias/AssignDeep-CNN/conv6/bias/read:02'Deep-CNN/conv6/bias/Initializer/zeros:08
½
&Deep-CNN/batch_normalization_1/gamma:0+Deep-CNN/batch_normalization_1/gamma/Assign+Deep-CNN/batch_normalization_1/gamma/read:027Deep-CNN/batch_normalization_1/gamma/Initializer/ones:08
º
%Deep-CNN/batch_normalization_1/beta:0*Deep-CNN/batch_normalization_1/beta/Assign*Deep-CNN/batch_normalization_1/beta/read:027Deep-CNN/batch_normalization_1/beta/Initializer/zeros:08
Ø
,Deep-CNN/batch_normalization_1/moving_mean:01Deep-CNN/batch_normalization_1/moving_mean/Assign1Deep-CNN/batch_normalization_1/moving_mean/read:02>Deep-CNN/batch_normalization_1/moving_mean/Initializer/zeros:0@H
ç
0Deep-CNN/batch_normalization_1/moving_variance:05Deep-CNN/batch_normalization_1/moving_variance/Assign5Deep-CNN/batch_normalization_1/moving_variance/read:02ADeep-CNN/batch_normalization_1/moving_variance/Initializer/ones:0@H

Deep-CNN/conv7/kernel:0Deep-CNN/conv7/kernel/AssignDeep-CNN/conv7/kernel/read:022Deep-CNN/conv7/kernel/Initializer/random_uniform:08
z
Deep-CNN/conv7/bias:0Deep-CNN/conv7/bias/AssignDeep-CNN/conv7/bias/read:02'Deep-CNN/conv7/bias/Initializer/zeros:08

;Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernel:0@Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernel/Assign@Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernel/read:02VDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform:08

9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/bias:0>Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/bias/Assign>Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/bias/read:02KDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/bias/Initializer/zeros:08

;Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernel:0@Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernel/Assign@Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernel/read:02VDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform:08

9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/bias:0>Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/bias/Assign>Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/bias/read:02KDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/bias/Initializer/zeros:08

;Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernel:0@Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernel/Assign@Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernel/read:02VDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernel/Initializer/random_uniform:08

9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/bias:0>Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/bias/Assign>Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/bias/read:02KDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/bias/Initializer/zeros:08

;Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernel:0@Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernel/Assign@Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernel/read:02VDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernel/Initializer/random_uniform:08

9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/bias:0>Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/bias/Assign>Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/bias/read:02KDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/bias/Initializer/zeros:08
k
Lstm-to-logits/W:0Lstm-to-logits/W/AssignLstm-to-logits/W/read:02!Lstm-to-logits/truncated_normal:08
`
Lstm-to-logits/b:0Lstm-to-logits/b/AssignLstm-to-logits/b/read:02Lstm-to-logits/Const:08"ì
while_contextüëøë
û:
?Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/while_context *<Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/LoopCond:029Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Merge:0:<Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Identity:0B8Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Exit:0B:Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Exit_1:0B:Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Exit_2:0B:Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Exit_3:0B:Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Exit_4:0Jæ3
5Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/Minimum:0
9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/TensorArray:0
hDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
;Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/TensorArray_1:0
;Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/strided_slice:0
9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Enter:0
;Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Enter_1:0
;Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Enter_2:0
;Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Enter_3:0
;Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Enter_4:0
8Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Exit:0
:Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Exit_1:0
:Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Exit_2:0
:Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Exit_3:0
:Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Exit_4:0
<Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Identity:0
>Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Identity_1:0
>Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Identity_2:0
>Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Identity_3:0
>Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Identity_4:0
>Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Less/Enter:0
8Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Less:0
@Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Less_1/Enter:0
:Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Less_1:0
>Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/LogicalAnd:0
<Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/LoopCond:0
9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Merge:0
9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Merge:1
;Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Merge_1:0
;Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Merge_1:1
;Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Merge_2:0
;Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Merge_2:1
;Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Merge_3:0
;Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Merge_3:1
;Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Merge_4:0
;Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Merge_4:1
ADeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/NextIteration:0
CDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/NextIteration_1:0
CDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/NextIteration_2:0
CDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/NextIteration_3:0
CDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/NextIteration_4:0
:Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Switch:0
:Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Switch:1
<Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Switch_1:0
<Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Switch_1:1
<Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Switch_2:0
<Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Switch_2:1
<Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Switch_3:0
<Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Switch_3:1
<Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Switch_4:0
<Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Switch_4:1
KDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter:0
MDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1:0
EDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/TensorArrayReadV3:0
]Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
WDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3:0
9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/add/y:0
7Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/add:0
;Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/add_1/y:0
9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/add_1:0
KDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/BiasAdd/Enter:0
EDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/BiasAdd:0
CDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/Const:0
JDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul/Enter:0
DDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul:0
EDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/Sigmoid:0
GDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/Sigmoid_1:0
GDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/Sigmoid_2:0
BDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/Tanh:0
DDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/Tanh_1:0
CDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/add/y:0
ADeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/add:0
CDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/add_1:0
IDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/concat/axis:0
DDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/concat:0
ADeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/mul:0
CDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1:0
CDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2:0
MDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/split/split_dim:0
CDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/split:0
CDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/split:1
CDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/split:2
CDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/split:3
>Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/bias/read:0
@Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernel/read:0
9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/TensorArray:0]Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0y
5Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/Minimum:0@Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Less_1/Enter:0
>Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/bias/read:0KDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/BiasAdd/Enter:0
;Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/TensorArray_1:0KDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter:0}
;Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/strided_slice:0>Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Less/Enter:0
@Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/lstm_cell/kernel/read:0JDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul/Enter:0¹
hDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0MDeep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1:0R9Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Enter:0R;Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Enter_1:0R;Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Enter_2:0R;Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Enter_3:0R;Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/while/Enter_4:0Z;Deep-LSTM/bd-lstm_1/bidirectional_rnn/fw/fw/strided_slice:0
û:
?Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/while_context *<Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/LoopCond:029Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Merge:0:<Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Identity:0B8Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Exit:0B:Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Exit_1:0B:Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Exit_2:0B:Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Exit_3:0B:Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Exit_4:0Jæ3
5Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/Minimum:0
9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/TensorArray:0
hDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
;Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/TensorArray_1:0
;Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/strided_slice:0
9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Enter:0
;Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Enter_1:0
;Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Enter_2:0
;Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Enter_3:0
;Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Enter_4:0
8Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Exit:0
:Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Exit_1:0
:Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Exit_2:0
:Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Exit_3:0
:Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Exit_4:0
<Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Identity:0
>Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Identity_1:0
>Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Identity_2:0
>Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Identity_3:0
>Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Identity_4:0
>Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Less/Enter:0
8Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Less:0
@Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Less_1/Enter:0
:Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Less_1:0
>Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/LogicalAnd:0
<Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/LoopCond:0
9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Merge:0
9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Merge:1
;Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Merge_1:0
;Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Merge_1:1
;Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Merge_2:0
;Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Merge_2:1
;Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Merge_3:0
;Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Merge_3:1
;Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Merge_4:0
;Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Merge_4:1
ADeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/NextIteration:0
CDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/NextIteration_1:0
CDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/NextIteration_2:0
CDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/NextIteration_3:0
CDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/NextIteration_4:0
:Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Switch:0
:Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Switch:1
<Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Switch_1:0
<Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Switch_1:1
<Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Switch_2:0
<Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Switch_2:1
<Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Switch_3:0
<Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Switch_3:1
<Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Switch_4:0
<Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Switch_4:1
KDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter:0
MDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1:0
EDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/TensorArrayReadV3:0
]Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
WDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3:0
9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/add/y:0
7Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/add:0
;Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/add_1/y:0
9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/add_1:0
KDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/BiasAdd/Enter:0
EDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/BiasAdd:0
CDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/Const:0
JDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul/Enter:0
DDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul:0
EDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/Sigmoid:0
GDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/Sigmoid_1:0
GDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/Sigmoid_2:0
BDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/Tanh:0
DDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/Tanh_1:0
CDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/add/y:0
ADeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/add:0
CDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/add_1:0
IDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/concat/axis:0
DDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/concat:0
ADeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/mul:0
CDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1:0
CDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2:0
MDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/split/split_dim:0
CDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/split:0
CDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/split:1
CDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/split:2
CDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/split:3
>Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/bias/read:0
@Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernel/read:0
>Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/bias/read:0KDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/BiasAdd/Enter:0}
;Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/strided_slice:0>Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Less/Enter:0
@Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/lstm_cell/kernel/read:0JDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul/Enter:0¹
hDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0MDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1:0
9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/TensorArray:0]Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0y
5Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/Minimum:0@Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Less_1/Enter:0
;Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/TensorArray_1:0KDeep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter:0R9Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Enter:0R;Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Enter_1:0R;Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Enter_2:0R;Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Enter_3:0R;Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/while/Enter_4:0Z;Deep-LSTM/bd-lstm_1/bidirectional_rnn/bw/bw/strided_slice:0
û:
?Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/while_context *<Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/LoopCond:029Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Merge:0:<Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Identity:0B8Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Exit:0B:Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Exit_1:0B:Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Exit_2:0B:Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Exit_3:0B:Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Exit_4:0Jæ3
5Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/Minimum:0
9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/TensorArray:0
hDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
;Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/TensorArray_1:0
;Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/strided_slice:0
9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Enter:0
;Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Enter_1:0
;Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Enter_2:0
;Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Enter_3:0
;Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Enter_4:0
8Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Exit:0
:Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Exit_1:0
:Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Exit_2:0
:Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Exit_3:0
:Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Exit_4:0
<Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Identity:0
>Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Identity_1:0
>Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Identity_2:0
>Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Identity_3:0
>Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Identity_4:0
>Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Less/Enter:0
8Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Less:0
@Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Less_1/Enter:0
:Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Less_1:0
>Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/LogicalAnd:0
<Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/LoopCond:0
9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Merge:0
9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Merge:1
;Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Merge_1:0
;Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Merge_1:1
;Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Merge_2:0
;Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Merge_2:1
;Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Merge_3:0
;Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Merge_3:1
;Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Merge_4:0
;Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Merge_4:1
ADeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/NextIteration:0
CDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/NextIteration_1:0
CDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/NextIteration_2:0
CDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/NextIteration_3:0
CDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/NextIteration_4:0
:Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Switch:0
:Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Switch:1
<Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Switch_1:0
<Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Switch_1:1
<Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Switch_2:0
<Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Switch_2:1
<Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Switch_3:0
<Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Switch_3:1
<Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Switch_4:0
<Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Switch_4:1
KDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter:0
MDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1:0
EDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/TensorArrayReadV3:0
]Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
WDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3:0
9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/add/y:0
7Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/add:0
;Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/add_1/y:0
9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/add_1:0
KDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/BiasAdd/Enter:0
EDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/BiasAdd:0
CDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/Const:0
JDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul/Enter:0
DDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul:0
EDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/Sigmoid:0
GDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/Sigmoid_1:0
GDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/Sigmoid_2:0
BDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/Tanh:0
DDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/Tanh_1:0
CDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/add/y:0
ADeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/add:0
CDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/add_1:0
IDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/concat/axis:0
DDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/concat:0
ADeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/mul:0
CDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/mul_1:0
CDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/mul_2:0
MDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/split/split_dim:0
CDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/split:0
CDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/split:1
CDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/split:2
CDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/split:3
>Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/bias/read:0
@Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernel/read:0
9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/TensorArray:0]Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0}
;Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/strided_slice:0>Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Less/Enter:0y
5Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/Minimum:0@Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Less_1/Enter:0
@Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/kernel/read:0JDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/MatMul/Enter:0
>Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/lstm_cell/bias/read:0KDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/lstm_cell/BiasAdd/Enter:0¹
hDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0MDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter_1:0
;Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/TensorArray_1:0KDeep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/TensorArrayReadV3/Enter:0R9Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Enter:0R;Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Enter_1:0R;Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Enter_2:0R;Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Enter_3:0R;Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/while/Enter_4:0Z;Deep-LSTM/bd-lstm_2/bidirectional_rnn/fw/fw/strided_slice:0
û:
?Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/while_context *<Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/LoopCond:029Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Merge:0:<Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Identity:0B8Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Exit:0B:Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Exit_1:0B:Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Exit_2:0B:Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Exit_3:0B:Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Exit_4:0Jæ3
5Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/Minimum:0
9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/TensorArray:0
hDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0
;Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/TensorArray_1:0
;Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/strided_slice:0
9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Enter:0
;Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Enter_1:0
;Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Enter_2:0
;Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Enter_3:0
;Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Enter_4:0
8Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Exit:0
:Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Exit_1:0
:Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Exit_2:0
:Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Exit_3:0
:Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Exit_4:0
<Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Identity:0
>Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Identity_1:0
>Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Identity_2:0
>Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Identity_3:0
>Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Identity_4:0
>Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Less/Enter:0
8Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Less:0
@Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Less_1/Enter:0
:Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Less_1:0
>Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/LogicalAnd:0
<Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/LoopCond:0
9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Merge:0
9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Merge:1
;Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Merge_1:0
;Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Merge_1:1
;Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Merge_2:0
;Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Merge_2:1
;Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Merge_3:0
;Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Merge_3:1
;Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Merge_4:0
;Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Merge_4:1
ADeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/NextIteration:0
CDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/NextIteration_1:0
CDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/NextIteration_2:0
CDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/NextIteration_3:0
CDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/NextIteration_4:0
:Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Switch:0
:Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Switch:1
<Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Switch_1:0
<Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Switch_1:1
<Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Switch_2:0
<Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Switch_2:1
<Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Switch_3:0
<Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Switch_3:1
<Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Switch_4:0
<Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Switch_4:1
KDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter:0
MDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1:0
EDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/TensorArrayReadV3:0
]Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0
WDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3:0
9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/add/y:0
7Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/add:0
;Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/add_1/y:0
9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/add_1:0
KDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/BiasAdd/Enter:0
EDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/BiasAdd:0
CDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/Const:0
JDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul/Enter:0
DDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul:0
EDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/Sigmoid:0
GDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/Sigmoid_1:0
GDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/Sigmoid_2:0
BDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/Tanh:0
DDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/Tanh_1:0
CDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/add/y:0
ADeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/add:0
CDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/add_1:0
IDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/concat/axis:0
DDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/concat:0
ADeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/mul:0
CDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/mul_1:0
CDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/mul_2:0
MDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/split/split_dim:0
CDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/split:0
CDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/split:1
CDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/split:2
CDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/split:3
>Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/bias/read:0
@Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernel/read:0
>Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/bias/read:0KDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/BiasAdd/Enter:0
;Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/TensorArray_1:0KDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter:0}
;Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/strided_slice:0>Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Less/Enter:0
9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/TensorArray:0]Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/TensorArrayWrite/TensorArrayWriteV3/Enter:0y
5Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/Minimum:0@Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Less_1/Enter:0¹
hDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/TensorArrayUnstack/TensorArrayScatter/TensorArrayScatterV3:0MDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/TensorArrayReadV3/Enter_1:0
@Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/lstm_cell/kernel/read:0JDeep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/lstm_cell/MatMul/Enter:0R9Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Enter:0R;Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Enter_1:0R;Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Enter_2:0R;Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Enter_3:0R;Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/while/Enter_4:0Z;Deep-LSTM/bd-lstm_2/bidirectional_rnn/bw/bw/strided_slice:0*¢
serving_default
'
input
Deep-CNN/Placeholder:0G
output=
Dense-Decoded/SparseToDense:0	ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿtensorflow/serving/predict