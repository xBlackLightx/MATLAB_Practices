function set_layer_addr(addr, layer)
    addr(SPX_OFFSET_LAYER + 1) = uint8(layer);
end

function set_tree_addr(addr, tree)
    if (SPX_TREE_HEIGHT * (SPX_D - 1)) > 64
        error('Subtree addressing is currently limited to at most 2^64 trees');
    end
    addr(SPX_OFFSET_TREE + 1:SPX_OFFSET_TREE + 8) = typecast(uint64(tree), 'uint8');
end

function set_type(addr, type)
    addr(SPX_OFFSET_TYPE + 1) = uint8(type);
end

function copy_subtree_addr(out, in)
    out(1:SPX_OFFSET_TREE + 8) = in(1:SPX_OFFSET_TREE + 8);
end

function set_keypair_addr(addr, keypair)
    addr(SPX_OFFSET_KP_ADDR + 1:SPX_OFFSET_KP_ADDR + 4) = typecast(uint32(keypair), 'uint8');
end

function copy_keypair_addr(out, in)
    out(1:SPX_OFFSET_TREE + 8) = in(1:SPX_OFFSET_TREE + 8);
    out(SPX_OFFSET_KP_ADDR + 1:SPX_OFFSET_KP_ADDR + 4) = in(SPX_OFFSET_KP_ADDR + 1:SPX_OFFSET_KP_ADDR + 4);
end

function set_chain_addr(addr, chain)
    addr(SPX_OFFSET_CHAIN_ADDR + 1) = uint8(chain);
end

function set_hash_addr(addr, hash)
    addr(SPX_OFFSET_HASH_ADDR + 1) = uint8(hash);
end

function set_tree_height(addr, tree_height)
    addr(SPX_OFFSET_TREE_HGT + 1) = uint8(tree_height);
end

function set_tree_index(addr, tree_index)
    addr(SPX_OFFSET_TREE_INDEX + 1:SPX_OFFSET_TREE_INDEX + 4) = typecast(uint32(tree_index), 'uint8');
end