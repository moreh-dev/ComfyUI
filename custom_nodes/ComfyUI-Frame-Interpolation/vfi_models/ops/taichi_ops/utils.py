import platform
import torch
from typing import Tuple

def to_shared_memory(tensors: Tuple[torch.Tensor]):
    return [tensor.cpu() for tensor in tensors if tensor is not None]
    """ if platform.system() == "Windows":
        return [tensor.cpu() for tensor in tensors if tensor is not None]
    
    return [tensor.share_memory_() for tensor in tensors if tensor is not None] """

def to_device(tensors: Tuple[torch.Tensor], device: torch.device):
    return [tensor.to(device) for tensor in tensors if tensor is not None]